import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:tecylab_clase_04/firebase_options.dart';

class FirebaseInjection {
  final FirebaseFirestore firestore;

  FirebaseInjection._(this.firestore);

  static Future<FirebaseInjection> getInstance() async {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);

    final firestore = FirebaseFirestore.instance;

    return FirebaseInjection._(firestore);
  }

  static Future<FirebaseInjection> getInstanceEmulator() async {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);

    final host = defaultTargetPlatform == TargetPlatform.android
        ? _Port.android
        : _Port.another;

    final firestore = FirebaseFirestore.instance
      ..settings = Settings(
        cacheSizeBytes: Settings.CACHE_SIZE_UNLIMITED,
        host: '$host:${_Port.firestore}',
        sslEnabled: false,
        persistenceEnabled: true,
      );

    return FirebaseInjection._(firestore);
  }
}

class _Port {
  // static const firebaseAuth = 9099;
  static const firestore = '8080';
  // static const storage = 9199;
  static const android = '10.0.2.2';
  static const another = 'localhost';
}
