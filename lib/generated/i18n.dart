import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class S {
  Locale _locale;
  String _lang;

  S(this._locale) {
    _lang = getLang(_locale);
    print(_lang);
  }

  static final GeneratedLocalizationsDelegate delegate =
      new GeneratedLocalizationsDelegate();

  static S of(BuildContext context) {
    var s = Localizations.of<S>(context, S);
    s._lang = getLang(s._locale);
    return s;
  }

  String get settings => "設定";
  String get allSessions => "すべてのセッション";
  String get appName => "iOSDC 2018";
  String get sponsors => "スポンサー";
  String get appDescription => "8月30日(木) ー 9月2日(日)";
  String get about => "詳細";
  String get mySchedule => "マイスケジュール";
  String monthDate(String month, String date, String dayOfMonth) => "$month月$date日($dayOfMonth)";
  String day(String day) => "$day日目";
}

class en extends S {
  en(Locale locale) : super(locale);
}
class GeneratedLocalizationsDelegate extends LocalizationsDelegate<S> {
  const GeneratedLocalizationsDelegate();

  List<Locale> get supportedLocales {
    return [
      new Locale("en", ""),
    ];
  }

  LocaleResolutionCallback resolution({Locale fallback}) {
    return (Locale locale, Iterable<Locale> supported) {
      var languageLocale = new Locale(locale.languageCode, "");
      if (supported.contains(locale))
        return locale;
      else if (supported.contains(languageLocale))
        return languageLocale;
      else {
        var fallbackLocale = fallback ?? supported.first;
        assert(supported.contains(fallbackLocale));
        return fallbackLocale;
      }
    };
  }

  Future<S> load(Locale locale) {
    String lang = getLang(locale);
    switch (lang) {
      case "en":
        return new SynchronousFuture<S>(new en(locale));
      default:
        return new SynchronousFuture<S>(new S(locale));
    }
  }

  bool isSupported(Locale locale) => supportedLocales.contains(getLang(locale));

  bool shouldReload(GeneratedLocalizationsDelegate old) => false;
}

String getLang(Locale l) =>
    l.countryCode.isEmpty ? l.languageCode : l.toString();
