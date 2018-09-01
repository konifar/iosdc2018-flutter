import 'dart:async';
import 'dart:core';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:iosdc2018flutter/model/converter/converter.dart';
import 'package:iosdc2018flutter/model/session.dart';
import 'package:iosdc2018flutter/repository/session_repository.dart';

/*
 * sessions: Collection
 */
class SessionRepositoryImpl extends SessionRepository {
  List<Session> _cache = List();

  Firestore _firestore;

  bool isDirty = true;

  SessionRepositoryImpl(this._firestore);

  @override
  Future<List<Session>> findAll() async {
    if (!isDirty && _cache.isNotEmpty) {
      return new Future.value(_cache);
    }

    final Stream<QuerySnapshot> snapshots =
        _firestore.collection("sessions").snapshots();

    List<Session> sessions = List();
    var converter = SessionConverter();

    // Fetch
    await snapshots.first.then((snapshot) {
      snapshot.documents.forEach((document) {
        sessions.add(converter.convert(document));
      });
    });

    // Sort
    sessions.sort((l, r) {
      var compare = l.stime.compareTo(r.stime);
      if (compare == 0) {
        compare = l.room.name.compareTo(r.room.name);
      }
      return compare;
    });

    // Cache
    _cache = sessions;

    return new Future.value(_cache);
  }

  @override
  Future<Session> find(String id) async {
    if (isDirty) {
      _cache = await findAll();
    }

    // Cache
    Map<String, Session> cacheById = Map();
    _cache.forEach((session) {
      cacheById[session.id] = session;
    });

    return cacheById[id];
  }

  @override
  Future<List<Session>> findByDate(DateTime dateTime) async {
    if (isDirty || _cache.isEmpty) {
      _cache = await findAll();
    }

    // Cache
    Map<DateTime, List<Session>> cacheByDate = Map();
    _cache.forEach((session) {
      if (cacheByDate[DateTime(
              session.stime.year, session.stime.month, session.stime.day)] ==
          null) {
        cacheByDate[DateTime(
                session.stime.year, session.stime.month, session.stime.day)] =
            List();
      }
      cacheByDate[DateTime(
              session.stime.year, session.stime.month, session.stime.day)]
          .add(session);
    });

    return cacheByDate[DateTime(dateTime.year, dateTime.month, dateTime.day)];
  }
}
