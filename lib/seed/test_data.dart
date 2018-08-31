import 'package:iosdc2018flutter/model/duration_type.dart';
import 'package:iosdc2018flutter/model/language.dart';
import 'package:iosdc2018flutter/model/room.dart';
import 'package:iosdc2018flutter/model/session.dart';
import 'package:iosdc2018flutter/model/speaker.dart';

// -------------------- Room --------------------
const roomA = Room("1", "Track A");
const roomB = Room("2", "Track B");
const roomC = Room("3", "Track C");
const roomD = Room("4", "Track D");
const roomE = Room("5", "Track E");
const roomF = Room("6", "Track F");

// -------------------- Language --------------------
const langJA = Language("1", "JA");
const langEN = Language("2", "EN");

// -------------------- Duration --------------------
const duration1 = DurationType("1", "キーセッション");
const duration2 = DurationType("2", "レギュラートーク（15分）");
const duration3 = DurationType("3", "レギュラートーク（30分）");
const duration4 = DurationType("4", "LT（5分）");

// -------------------- Speaker --------------------
const speaker1 = Speaker(
  "1",
  "長谷川智希",
  "https://fortee.jp/files/iosdc-japan-2018/speaker/707b297d-ff6b-4710-bf34-6a56b11012c8.jpg",
  "",
);

// -------------------- Session --------------------
List<Session> sessions() {
  List sessions = List<Session>();
  sessions.add(session1);
  return sessions;
}

var session1 = Session(
  "1",
  "OPENING",
  "",
  DateTime(2018, 8, 31, 10, 0, 0),
  DateTime(2018, 8, 31, 10, 40, 0),
  speaker1,
  roomA,
  duration1,
  langJA,
);
