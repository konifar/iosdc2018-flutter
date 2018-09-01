import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:iosdc2018flutter/model/session.dart';
import 'package:iosdc2018flutter/repository/repository_factory.dart';

class FavoriteButton extends StatefulWidget {
  final Session session;
  final GoogleSignIn googleSignIn;
  final bool favorite;
  final ValueChanged<bool> onChanged;
  final Color activeColor;
  final Color inActiveColor;

  FavoriteButton({
    Key key,
    @required this.session,
    @required this.googleSignIn,
    @required this.favorite,
    @required this.onChanged,
    this.activeColor,
    this.inActiveColor,
  }) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      value: 1.0,
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(FavoriteButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.favorite != widget.favorite) {
      animationController.stop();
      animationController.forward(from: 0.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    final Widget child = IconButton(
      icon: (widget.favorite
          ? Icon(
              Icons.favorite,
              color: widget.activeColor != null
                  ? widget.activeColor
                  : theme.primaryColor,
            )
          : Icon(
              Icons.favorite_border,
              color: widget.inActiveColor != null
                  ? widget.inActiveColor
                  : Colors.grey[500],
            )),
      onPressed: () => _toggleFavorite(widget.session),
    );

    return ScaleTransition(
      scale: CurvedAnimation(
        parent: animationController,
        curve: Curves.elasticOut,
      ),
      child: child,
    );
  }

  Future<Null> _toggleFavorite(Session session) async {
    await _ensureLoggedIn(widget.googleSignIn);
    GoogleSignInAccount user = widget.googleSignIn.currentUser;
    if (user != null) {
      await _updateFavorite(widget.googleSignIn, session, !widget.favorite);
      widget.onChanged(!widget.favorite);
    }
  }

  Future<Null> _ensureLoggedIn(GoogleSignIn googleSignIn) async {
    GoogleSignInAccount user = googleSignIn.currentUser;
    if (user == null) {
      user = await googleSignIn.signInSilently();
    }
    if (user == null) {
      await googleSignIn.signIn();
    }
  }

  Future<Null> _updateFavorite(
      GoogleSignIn googleSignIn, Session session, bool favorite) async {
    await _ensureLoggedIn(googleSignIn);
    GoogleSignInAccount user = googleSignIn.currentUser;

    await RepositoryFactory()
        .getFavoriteRepository()
        .update(user.id, session.id, favorite);
  }
}
