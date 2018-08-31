import 'package:iosdc2018flutter/model/duration_type.dart';
import 'package:iosdc2018flutter/model/language.dart';
import 'package:iosdc2018flutter/model/room.dart';
import 'package:iosdc2018flutter/model/speaker.dart';

class Session {
  const Session(
    this.id,
    this.title,
    this.description,
    this.stime,
    this.etime,
    this.speaker,
    this.room,
    this.durationType,
    this.language,
  );

  final String id;
  final String title;
  final String description;
  final DateTime stime;
  final DateTime etime;
  final Speaker speaker;
  final Room room;
  final DurationType durationType;
  final Language language;

  int getDay() {
    // iOSDC is held on 8/31 ~ 9/2
    switch (stime.day) {
      case 31:
        return 1;
      case 1:
        return 2;
      case 2:
        return 3;
      default:
        return 0;
    }
  }
}
