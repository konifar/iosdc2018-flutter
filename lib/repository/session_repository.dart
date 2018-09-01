import 'dart:async';

import 'package:iosdc2018flutter/model/session.dart';

abstract class SessionRepository {
  Future<List<Session>> findAll();

  Future<Session> find(String id);

  Future<List<Session>> findByDate(DateTime dateTime);

  Future<Map<DateTime, List<Session>>> groupByDate();

  Future<List<Session>> findByIds(List<int> ids);
}
