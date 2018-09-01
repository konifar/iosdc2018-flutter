import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:intl/intl.dart';
import 'package:iosdc2018flutter/model/session.dart';
import 'package:iosdc2018flutter/model/speaker.dart';
import 'package:iosdc2018flutter/theme.dart';
import 'package:iosdc2018flutter/ui/sessions/favorite_button.dart';

class SessionDetail extends StatefulWidget {
  SessionDetail({
    Key key,
    @required this.session,
    @required this.favorite,
    @required this.googleSignIn,
    @required this.onFavoriteChanged,
  })  : assert(session != null),
        assert(favorite != null),
        assert(onFavoriteChanged != null),
        super(key: key);

  final Session session;
  final GoogleSignIn googleSignIn;
  final ValueChanged<bool> onFavoriteChanged;
  bool favorite;

  @override
  _SessionDetailState createState() => _SessionDetailState();
}

const double _kAppBarHeight = 320.0;

const String _imgHeader = 'assets/img_drawer_header.png';

class _SessionDetailState extends State<SessionDetail> {
  static final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>();

  ScrollController _hideFabController;

  bool _isFabVisible;

  @override
  void initState() {
    super.initState();
    _isFabVisible = true;
    _hideFabController = ScrollController();
    _hideFabController.addListener(() {
      if (_hideFabController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          _isFabVisible = false;
        });
      }
      if (_hideFabController.position.userScrollDirection ==
          ScrollDirection.forward) {
        setState(() {
          _isFabVisible = true;
        });
      }
    });
  }

  @override
  void dispose() {
    _hideFabController.dispose();
    super.dispose();
  }

  Widget _buildSpeakerRow(Speaker speaker, TextStyle speakerNameStyle) {
    return Container(
      padding: EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          SizedBox(
            width: 32.0,
            height: 32.0,
            child: CircleAvatar(
              backgroundImage: NetworkImage(speaker.imageUrl),
            ),
          ),
          Container(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(speaker.name, style: speakerNameStyle)),
        ],
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final ThemeData theme = Theme.of(context);

    return SliverAppBar(
      pinned: true,
      expandedHeight: _kAppBarHeight,
      flexibleSpace: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        final Size size = constraints.biggest;
        final double appBarHeight = size.height - statusBarHeight;
        final double t =
            (appBarHeight - kToolbarHeight) / (_kAppBarHeight - kToolbarHeight);

        return Stack(
          children: [
            _buildBackgroundImage(statusBarHeight, t),
            _buildHeaderContents(size, t, theme),
            _buildAppBarFixedTitle(statusBarHeight, t, theme),
          ],
        );
      }),
    );
  }

  /*
   * When the user scroll up, this appbar title is shown with fade animation.
   */
  Widget _buildAppBarFixedTitle(
      double statusBarHeight, double t, ThemeData theme) {
    final TextStyle titleStyle = theme.textTheme.title.merge(TextStyle(
      color: Colors.white,
    ));

    final Curve _textOpacity =
        const Interval(0.4, 1.0, curve: Curves.easeInOut);

    final Size screenSize = MediaQuery.of(context).size;
    // kToolbarHeight equals the left icon width
    final double titleWidth =
        screenSize.width - kToolbarHeight - NavigationToolbar.kMiddleSpacing;

    final iOS = Theme.of(context).platform == TargetPlatform.iOS;

    return Positioned.fromRect(
      rect: Rect.fromLTWH(
        iOS
            ? kToolbarHeight - NavigationToolbar.kMiddleSpacing
            : kToolbarHeight,
        statusBarHeight,
        titleWidth,
        kToolbarHeight,
      ),
      child: Container(
        alignment: iOS ? Alignment.center : Alignment.centerLeft,
        child: Opacity(
          opacity: _textOpacity.transform(1 - t.clamp(0.0, 1.0)),
          child: Text(
            widget.session.title,
            style: titleStyle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderContents(Size size, double t, ThemeData theme) {
    final TextStyle titleStyle = theme.textTheme.title.merge(TextStyle(
      color: Colors.white,
    ));
    final subheadStyle = theme.textTheme.body1.merge(TextStyle(
      color: Colors.white,
    ));
    final speakerNameStyle = theme.textTheme.subhead.merge(TextStyle(
      color: Colors.white,
    ));

    final Curve _textOpacity =
        const Interval(0.4, 1.0, curve: Curves.easeInOut);

    return Positioned(
      bottom: 0.0,
      width: size.width,
      child: Opacity(
        opacity: _textOpacity.transform(t.clamp(0.0, 1.0)),
        child: Container(
          margin: const EdgeInsets.only(
              left: 16.0, right: 16.0, top: 16.0, bottom: 24.0),
          child: Column(
            children: [
              // Title
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.session.title,
                  style: titleStyle,
                ),
              ),
              // DurationType
              Container(
                margin: EdgeInsets.only(top: 16.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.session.durationType.name,
                  style: subheadStyle,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 4.0),
                child: _buildSpeakerRow(
                  widget.session.speaker,
                  speakerNameStyle,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBackgroundImage(double statusBarHeight, double t) {
    final Curve _textOpacity =
        const Interval(0.4, 1.0, curve: Curves.easeInOut);
    final double parallax = Tween<double>(begin: _kAppBarHeight / 2.5, end: 0.0)
        .lerp(t.clamp(0.0, 1.0));

    return Positioned(
      top: -parallax,
      left: 0.0,
      right: 0.0,
      height: _kAppBarHeight + statusBarHeight,
      child: Opacity(
        opacity: _textOpacity.transform(t.clamp(0.0, 1.0)),
        child: Container(
          decoration: const BoxDecoration(
            image: const DecorationImage(
              image: const AssetImage(
                _imgHeader,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: themeData,
      child: Scaffold(
        key: _scaffoldKey,
        body: CustomScrollView(
          controller: _hideFabController,
          slivers: [
            _buildAppBar(context),
            _buildBody(),
          ],
        ),
        floatingActionButton: !_isFabVisible
            ? null
            : FloatingActionButton(
                child: FavoriteButton(
                  session: widget.session,
                  favorite: widget.favorite,
                  googleSignIn: widget.googleSignIn,
                  onChanged: (value) {
                    widget.onFavoriteChanged(value);
                    setState(() {
                      widget.favorite = !widget.favorite;
                    });
                  },
                  activeColor: Colors.white,
                  inActiveColor: Colors.white,
                ),
                onPressed: () => {},
              ),
      ),
    );
  }

  Widget _buildBody() {
    final ThemeData theme = Theme.of(context);
    final textStyle = theme.textTheme.body1.merge(TextStyle(
      color: Colors.grey[600],
    ));
    final descriptionStyle = theme.textTheme.body1;

    return SliverPadding(
      padding: const EdgeInsets.all(16.0),
      sliver: SliverList(
        delegate: SliverChildListDelegate([
          _buildDate(textStyle),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: Text(
              widget.session.room.name,
              style: textStyle,
            ),
          ),
          Container(
            constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top -
                    kToolbarHeight -
                    100),
            margin: const EdgeInsets.only(top: 16.0),
            child: Text(
              widget.session.description,
              style: descriptionStyle,
            ),
          ),
        ]),
      ),
    );
  }

  Widget _buildDate(TextStyle textStyle) {
    final formatter =
        DateFormat.Hm(Localizations.localeOf(context).languageCode);
    final startAt = formatter.format(widget.session.stime);
    final endAt = formatter.format(widget.session.etime);

    return Container(
      margin: const EdgeInsets.only(top: 8.0),
      child: Text(
        // "${S.of(context).day(widget.session.getDay().toString())} / $startAt - $endAt",
        "${widget.session.getDay().toString()}日目 / $startAt - $endAt",
        style: textStyle,
      ),
    );
  }
}
