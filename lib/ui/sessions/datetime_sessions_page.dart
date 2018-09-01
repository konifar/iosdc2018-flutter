import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:iosdc2018flutter/model/session.dart';
import 'package:iosdc2018flutter/repository/repository_factory.dart';
import 'package:iosdc2018flutter/ui/sessions/session_item.dart';
import 'package:meta/meta.dart';

final googleSignIn = GoogleSignIn();

class DateTimeSessionsPage extends StatefulWidget {
  final DateTime dateTime;

  DateTimeSessionsPage(this.dateTime);

  @override
  _DateTimeSessionsPageState createState() =>
      _DateTimeSessionsPageState(dateTime);
}

class _DateTimeSessionsPageState extends State<DateTimeSessionsPage> {
  List<Session> _sessions = [];
  final DateTime dateTime;

  _DateTimeSessionsPageState(this.dateTime);

  @override
  void initState() {
    super.initState();

    RepositoryFactory()
        .getSessionRepository()
        .findByDate(dateTime)
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
    if (mounted) {
      setState(() => _sessions = sessions);
    }
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
