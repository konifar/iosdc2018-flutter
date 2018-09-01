import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:iosdc2018flutter/model/session.dart';
import 'package:iosdc2018flutter/repository/repository_factory.dart';
import 'package:iosdc2018flutter/ui/sessions/session_item.dart';

final googleSignIn = GoogleSignIn();

class MySchedulePage extends StatefulWidget {
  @override
  _MySchedulePageState createState() => _MySchedulePageState();
}

class _MySchedulePageState extends State<MySchedulePage> {
  List<Session> _sessions = [];

  @override
  void initState() {
    super.initState();

    _fetch();
  }

  Future<Null> _fetch() async {
    await _ensureLoggedIn(googleSignIn);
    GoogleSignInAccount user = googleSignIn.currentUser;

    if (user == null) {
      return;
    }

    List<int> favoriteIds = await RepositoryFactory()
        .getFavoriteRepository()
        .findAll(user.id)
        .then((favorites) {
      List<int> favoriteSessionIds = List();
      favorites.forEach((String id, bool value) {
        if (value == true) {
          favoriteSessionIds.add(int.parse(id));
        }
      });
      return favoriteSessionIds;
    });

    RepositoryFactory()
        .getSessionRepository()
        .findByIds(favoriteIds)
        .then((s) => setSessions(s));
  }

  @override
  Widget build(BuildContext context) {
    if (_sessions.isEmpty) {
      return Center(
        child: const CircularProgressIndicator(),
      );
    }

    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
      children: _sessions.map((Session session) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: SessionsItem(
            session: session,
            googleSignIn: googleSignIn,
          ),
        );
      }).toList(),
    );
  }

  void setSessions(List<Session> sessions) {
    setState(() => _sessions = sessions);
  }
}

class SessionPageRoute<Session> extends MaterialPageRoute {
  SessionPageRoute({
    @required this.session,
    WidgetBuilder builder,
    RouteSettings settings: const RouteSettings(),
  }) : super(builder: builder, settings: settings);

  Session session;

  @override
  Session get currentResult => session;
}

Future<Null> _ensureLoggedIn(GoogleSignIn googleSignIn) async {
  GoogleSignInAccount user = googleSignIn.currentUser;
  if (user == null) {
    user = await googleSignIn.signInSilently();
  }
}
