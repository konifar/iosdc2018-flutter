import 'package:flutter/widgets.dart';
import 'package:iosdc2018flutter/seed/seed.dart';

/// This app uploads the seed data to Firebase.
void main() => runApp(SeedWidget());

class SeedWidget extends StatefulWidget {
  @override
  _SeedWidgetState createState() => new _SeedWidgetState();
}

class _SeedWidgetState extends State<SeedWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  void initState() {
    super.initState();
    Seed.execute();
  }
}
