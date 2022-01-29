// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCBFtXAQ_-wwFwICTwzPqKh-OgVdFX1jhY',
    appId: '1:222296071259:web:05bdf9ee8acede974df37e',
    messagingSenderId: '222296071259',
    projectId: 'webproject-22bea',
    authDomain: 'webproject-22bea.firebaseapp.com',
    databaseURL: 'https://webproject-22bea-default-rtdb.firebaseio.com',
    storageBucket: 'webproject-22bea.appspot.com',
    measurementId: 'G-CSH533XJ23',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAIb1EPzmHs7KnKBPW3E_yuC6cQPtyMpAU',
    appId: '1:222296071259:android:c43ac4baf24068824df37e',
    messagingSenderId: '222296071259',
    projectId: 'webproject-22bea',
    databaseURL: 'https://webproject-22bea-default-rtdb.firebaseio.com',
    storageBucket: 'webproject-22bea.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB9qfLEYklZdwg2h2RKVFo3yIu_ZDc8S1Q',
    appId: '1:222296071259:ios:75e040ef02aa4f124df37e',
    messagingSenderId: '222296071259',
    projectId: 'webproject-22bea',
    databaseURL: 'https://webproject-22bea-default-rtdb.firebaseio.com',
    storageBucket: 'webproject-22bea.appspot.com',
    iosClientId: '222296071259-sjbnk7pa3rmddnpepd68f827jk8b9jju.apps.googleusercontent.com',
    iosBundleId: 'com.devexpert.flutterweb',
  );
}
