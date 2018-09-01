import 'dart:async';

import 'package:flutter/material.dart';
import 'package:iosdc2018flutter/repository/repository_factory.dart';
import 'package:iosdc2018flutter/ui/sessions/datetime_sessions_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String PREF_KEY_TAB_INDEX = "pref_key_tab_index";

class AllSessionsPage extends StatefulWidget {
  @override
  State createState() => _AllSessionsPageState();
}

class _AllSessionsPageState extends State<AllSessionsPage>
    with TickerProviderStateMixin {
  TabController _controller;
  List<DateTime> _dateTimes = [];

  @override
  void initState() {
    super.initState();

    RepositoryFactory()
        .getSessionRepository()
        .groupByDate()
        .then((r) => setDateTime(r.keys.toList()));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _saveTabIndex() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print("saveTabIndex: ${_controller?.index}");
    prefs.setInt(PREF_KEY_TAB_INDEX, _controller?.index);
  }

  Future<int> _restoreTabIndex() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int tabIndex = prefs.getInt(PREF_KEY_TAB_INDEX);
    return tabIndex != null ? tabIndex : _controller?.index;
  }

  void setDateTime(List<DateTime> dateTimes) {
    dateTimes.sort((l, r) => l.compareTo(r));

    setState(() {
      _dateTimes = dateTimes;

      _controller?.dispose();
      _controller = TabController(vsync: this, length: _dateTimes.length);
      _controller.addListener(_saveTabIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_dateTimes.isEmpty) {
      return Center(
        child: const CircularProgressIndicator(),
      );
    }

    _restoreTabIndex().then((int i) => _controller?.index = i);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kTextTabBarHeight),
        child: Material(
          color: Theme.of(context).primaryColor,
          elevation: 4.0,
          child: TabBar(
            controller: _controller,
            isScrollable: true,
            tabs: _dateTimes
                .map(
                  (DateTime dateTime) => Tab(
                      text:
                          "${dateTime.month}月${dateTime.day}日(${dateTime.weekday})"),
//                        text: S.of(context).monthDate(
//                              dateTime.month.toString(),
//                              dateTime.day.toString(),
//                              dateTime.weekday.toString(),
//                            ),
//                      ),
                )
                .toList(),
          ),
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: _dateTimes.map((DateTime dateTime) {
          return DateTimeSessionsPage(dateTime);
        }).toList(),
      ),
    );
  }
}
