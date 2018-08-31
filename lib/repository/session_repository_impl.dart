import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:iosdc2018flutter/model/session.dart';
import 'package:iosdc2018flutter/repository/session_repository.dart';
import 'package:iosdc2018flutter/seed/test_data.dart';

/*
 * sessions: Collection
 */
class SessionRepositoryImpl extends SessionRepository {
  List<Session> _cache = List();

  Firestore _firestore;

  bool isDirty = true;

  SessionRepositoryImpl(this._firestore, this._cache);

  Future<List<Session>> findAll() async {
    if (!isDirty && _cache.isNotEmpty) {
      return new Future.value(_cache);
    }

    final Stream<QuerySnapshot> snapshots =
        _firestore.collection("sessions").snapshots();

    await snapshots.first.then((snapshot) {
      snapshot.documents.forEach((snapshot) {
        print(snapshot.documentID.toString());
      });
      return snapshot.documents;
    });

    // TODO
    // _cache = result;
    return new Future.value(_cache);
  }

  @override
  Future<List<Session>> findByRoom(int roomId) {
    // TODO: implement findByRoom
  }

  @override
  Future<Session> find(String id) {
    // TODO: implement find
  }

  void updateAll() async {
    return await _firestore
        .collection("sessions")
        .document(session1.id)
        .setData({});
  }
}
