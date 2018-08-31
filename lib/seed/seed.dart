import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:iosdc2018flutter/model/session.dart';
import 'package:iosdc2018flutter/seed/test_data.dart';

class Seed {
  static void execute() {
    var firestore = Firestore.instance;
    _execute(firestore, sessions());
  }

  static Future<Null> _deleteAll(Firestore firestore) async {
    var batch = firestore.batch();

    await firestore.collection("sessions").getDocuments().then((query) {
      query.documents.forEach((document) {
        batch.delete(document.reference);
      });

      batch.commit().then((doc) {
        print("Deleted all data.");
      });
    });
  }

  static void _execute(
    Firestore firestore,
    List<Session> sessions,
  ) async {
    await _deleteAll(firestore);

    var batch = firestore.batch();

    sessions.forEach((session) {
      print("Update: ${session.id}, ${session.title}");

      var sessionsGroup = firestore.collection("sessions").document(session.id);
      batch.setData(sessionsGroup, {
        "title": session.title,
        "description": session.description,
        "stime": session.stime,
        "etime": session.etime,
        "speaker": {
          "id": session.speaker.id,
          "name": session.speaker.name,
        },
        "room": {
          "id": session.room.id,
          "name": session.room.name,
        },
        "durationType": {
          "id": session.durationType.id,
          "name": session.durationType.name,
        },
        "language": {
          "id": session.language.id,
          "name": session.language.name,
        }
      });
    });

    batch.commit().then((doc) {
      print("Updated all data.");
    });
  }
}
