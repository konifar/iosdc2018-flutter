import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:iosdc2018flutter/repository/favorite_repository.dart';
import 'package:iosdc2018flutter/repository/favorite_repository_impl.dart';
import 'package:iosdc2018flutter/repository/session_repository.dart';
import 'package:iosdc2018flutter/repository/session_repository_impl.dart';

class RepositoryFactory {
  static final RepositoryFactory _singleton = new RepositoryFactory._internal();

  factory RepositoryFactory() {
    return _singleton;
  }

  Firestore _firestore;

  SessionRepository _sessionRepository;

  FavoriteRepository _favoriteRepository;

  RepositoryFactory._internal() {
    _firestore = Firestore.instance;
    _sessionRepository = SessionRepositoryImpl(_firestore);
    _favoriteRepository = FavoriteRepositoryImpl(_firestore, new Map());
  }

  SessionRepository getSessionRepository() {
    return _sessionRepository;
  }

  FavoriteRepository getFavoriteRepository() {
    return _favoriteRepository;
  }
}
