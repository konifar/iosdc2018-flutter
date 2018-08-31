import 'package:flutter/widgets.dart';
import 'package:iosdc2018flutter/repository/repository_factory.dart';
import 'package:iosdc2018flutter/seed/seed.dart';

void main() => runApp(FetchWidget());

class FetchWidget extends StatefulWidget {
  @override
  _FetchWidgetState createState() => new _FetchWidgetState();
}

class _FetchWidgetState extends State<FetchWidget> {
  void fetch() async {
    var sessions = await RepositoryFactory().getSessionRepository().findAll();
    for (var session in sessions) {
      print(session.title);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  void initState() {
    super.initState();
    fetch();

    Seed.execute();
  }
}
