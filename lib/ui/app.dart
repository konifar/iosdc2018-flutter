import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:iosdc2018flutter/generated/i18n.dart';
import 'package:iosdc2018flutter/theme.dart';
import 'package:iosdc2018flutter/ui/drawer.dart';
import 'package:iosdc2018flutter/ui/myschedule/my_schedule.dart';
import 'package:iosdc2018flutter/ui/page_container.dart';
import 'package:iosdc2018flutter/ui/sessions/all_sessions.dart';

class MyApp extends StatefulWidget {
  static FirebaseAnalytics analytics = FirebaseAnalytics();
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: analytics);

  @override
  _MyAppState createState() => _MyAppState(analytics, observer);
}

class _MyAppState extends State<MyApp> {
  final FirebaseAnalytics analytics;
  final FirebaseAnalyticsObserver observer;

  _MyAppState(this.analytics, this.observer);

  @override
  void initState() {
    super.initState();
    analytics.logAppOpen();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: S.of(context).appName,
      title: "iOSDC 2018",
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      localeResolutionCallback: S.delegate.resolution(
        fallback: Locale("en", ""),
      ),
      navigatorObservers: [
        FirebaseAnalyticsObserver(analytics: analytics),
      ],
      theme: themeData,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  String _title = "";
  int _currentIndex = 0;
  List<PageContainer> _pages;

  @override
  void dispose() {
    if (_pages != null) {
      for (PageContainer container in _pages) {
        container.controller.dispose();
      }
    }
    super.dispose();
  }

  List<PageContainer> _createPages() {
    return <PageContainer>[
      PageContainer(
        // title: S.of(context).allSessions,
        title: "すべてのセッション",
        icon: Icon(Icons.event_note),
        hasTab: true,
        body: () => AllSessionsPage(),
        tickerProvider: this,
      ),
      PageContainer(
        // title: S.of(context).mySchedule,
        title: "マイスケジュール",
        icon: Icon(Icons.schedule),
        hasTab: false,
        body: () => MySchedulePage(),
        tickerProvider: this,
      ),
    ];
  }

  Widget _buildTransitionsStack() {
    final List<FadeTransition> transitions = <FadeTransition>[];

    for (PageContainer container in _pages) {
      transitions.add(container.transition());
    }

    // We want to have the newly animating (fading in) views on top.
    transitions.sort((FadeTransition a, FadeTransition b) {
      final Animation<double> aAnimation = a.opacity;
      final Animation<double> bAnimation = b.opacity;
      final double aValue = aAnimation.value;
      final double bValue = bAnimation.value;
      return aValue.compareTo(bValue);
    });

    return Stack(children: transitions);
  }

  @override
  Widget build(BuildContext context) {
    _pages = _createPages();

    PageContainer _page = _pages[_currentIndex];
    _page.controller.value = 1.0;
    _title = _page.title;

    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        elevation: _page.hasTab ? 0.0 : 4.0,
      ),
      drawer: MyDrawer(
        items: _pages,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _page.controller.reverse();
            _currentIndex = index;
            _page.controller.forward();
            _title = _page.title;
          });
        },
      ),
      body: Center(
        child: _buildTransitionsStack(),
      ),
    );
  }
}
