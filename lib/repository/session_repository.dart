import 'dart:async';

import 'package:iosdc2018flutter/model/session.dart';

abstract class SessionRepository {
  Future<List<Session>> findAll();

  Future<Session> find(String id);

  Future<List<Session>> findByRoom(int roomId);
}
