import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:intl/intl.dart';
import 'package:iosdc2018flutter/model/session.dart';
import 'package:iosdc2018flutter/model/speaker.dart';
import 'package:iosdc2018flutter/repository/repository_factory.dart';
import 'package:iosdc2018flutter/ui/sessions/datetime_sessions_page.dart';
import 'package:iosdc2018flutter/ui/sessions/favorite_button.dart';
import 'package:iosdc2018flutter/ui/sessions/session_detail.dart';

class SessionsItem extends StatefulWidget {
  const SessionsItem({
    Key key,
    @required this.session,
    this.googleSignIn,
  })  : assert(session != null),
        super(key: key);

  final Session session;
  final GoogleSignIn googleSignIn;

  @override
  _SessionsItemState createState() => _SessionsItemState();
}

class _SessionsItemState extends State<SessionsItem> {
  bool _favorite = false;

  @override
  void initState() {
    super.initState();
    fetchFavorite(widget.googleSignIn);
  }

  Future<Null> _showDetailPage(Session session) async {
    await Navigator.push(
      context,
      SessionPageRoute(
        session: session,
        builder: (BuildContext context) {
          return SessionDetail(
            session: session,
            favorite: _favorite,
            googleSignIn: googleSignIn,
            onFavoriteChanged: (value) => setState(() => _favorite = value),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle timeStyle = theme.textTheme.caption.merge(
      const TextStyle(fontWeight: FontWeight.bold),
    );
    final TextStyle titleStyle = theme.textTheme.title;
    final TextStyle descriptionStyle = theme.textTheme.caption.merge(
      const TextStyle(color: Colors.black),
    );
    final TextStyle speakerNameStyle = theme.textTheme.body2;

    final Session _session = widget.session;

    final formatter =
        DateFormat.Hm(Localizations.localeOf(context).languageCode);
    final startAt = formatter.format(_session.stime);
    final endAt = formatter.format(_session.etime);

    return Card(
      child: InkWell(
        onTap: () => _showDetailPage(_session),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    // "${S.of(context).day(widget.session.getDay().toString())}   $startAt - $endAt / ${_session.room.name}",
                    "${widget.session.getDay().toString()}日目   $startAt - $endAt / ${_session.room.name}",
                    style: timeStyle,
                  ),
                  Container(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Text(_session.title, style: titleStyle)),
                  DefaultTextStyle(
                    style: descriptionStyle,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    child: Padding(
                      child: Text(_session.description),
                      padding: const EdgeInsets.only(top: 12.0, bottom: 8.0),
                    ),
                  ),
                  Padding(
                    child: _createSpeakerRow(
                      _session.speaker,
                      speakerNameStyle,
                    ),
                    padding: const EdgeInsets.only(top: 8.0),
                  )
                ],
              ),
              Positioned(
                bottom: -8.0,
                right: -8.0,
                child: FavoriteButton(
                  session: _session,
                  googleSignIn: googleSignIn,
                  favorite: _favorite,
                  onChanged: (value) {
                    setState(() => _favorite = value);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<Null> fetchFavorite(GoogleSignIn googleSignIn) async {
    GoogleSignInAccount user = googleSignIn.currentUser;
    if (user == null) {
      user = await googleSignIn.signInSilently();
    }
    if (user == null) {
      return;
    }
    RepositoryFactory()
        .getFavoriteRepository()
        .findAll(user.id)
        .then((Map<String, bool> result) {
      setState(() {
        _favorite = result[widget.session.id] == true;
      });
    });
  }
}

Widget _createSpeakerRow(Speaker speaker, TextStyle speakerNameStyle) {
  return Container(
    padding: const EdgeInsets.only(top: 8.0),
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
