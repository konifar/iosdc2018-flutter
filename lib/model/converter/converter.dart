import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:iosdc2018flutter/model/duration_type.dart';
import 'package:iosdc2018flutter/model/language.dart';
import 'package:iosdc2018flutter/model/room.dart';
import 'package:iosdc2018flutter/model/session.dart';
import 'package:iosdc2018flutter/model/speaker.dart';

class SessionConverter {
  Session convert(DocumentSnapshot document) {
    String id = document.documentID;
    String title = document.data["title"];
    String description = document.data["description"];
    DateTime stime = document.data["stime"];
    DateTime etime = document.data["etime"];
    Map speakerMap = document.data["speaker"];
    Speaker speaker = Speaker(
      speakerMap["id"],
      speakerMap["name"],
      speakerMap["imageUrl"],
      speakerMap["twitterId"],
    );
    Map roomMap = document.data["room"];
    Room room = Room(
      roomMap["id"],
      roomMap["name"],
    );
    Map durationTypeMap = document.data["durationType"];
    DurationType durationType = DurationType(
      durationTypeMap["id"],
      durationTypeMap["name"],
    );
    Map languageMap = document.data["language"];
    Language language = Language(
      languageMap["id"],
      languageMap["name"],
    );

    Session session = Session(id, title, description, stime, etime, speaker,
        room, durationType, language);

    return session;
  }
}
