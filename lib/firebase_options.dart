// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBNPD_WJ7W-_x6qEgYMv8MpreBBAN3QWYA',
    appId: '1:361743222001:web:b46db7f18aac55bc079550',
    messagingSenderId: '361743222001',
    projectId: 'c-m-s-c687d',
    authDomain: 'c-m-s-c687d.firebaseapp.com',
    storageBucket: 'c-m-s-c687d.appspot.com',
    measurementId: 'G-VP6VCV7YWW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCGyVok-KArwSt6S-YBZk9Vqp_h41A9fPY',
    appId: '1:361743222001:android:9f3d2b990f858a81079550',
    messagingSenderId: '361743222001',
    projectId: 'c-m-s-c687d',
    storageBucket: 'c-m-s-c687d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAMCmnM2AK-d1xrSIL-1q1Yv-fBEuZtp-8',
    appId: '1:361743222001:ios:a915d41aa2dfedcc079550',
    messagingSenderId: '361743222001',
    projectId: 'c-m-s-c687d',
    storageBucket: 'c-m-s-c687d.appspot.com',
    iosClientId: '361743222001-nh28cd9k3mdgud5679j8tb8jviq22j8h.apps.googleusercontent.com',
    iosBundleId: 'com.example.objections',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAMCmnM2AK-d1xrSIL-1q1Yv-fBEuZtp-8',
    appId: '1:361743222001:ios:a915d41aa2dfedcc079550',
    messagingSenderId: '361743222001',
    projectId: 'c-m-s-c687d',
    storageBucket: 'c-m-s-c687d.appspot.com',
    iosClientId: '361743222001-nh28cd9k3mdgud5679j8tb8jviq22j8h.apps.googleusercontent.com',
    iosBundleId: 'com.example.objections',
  );
}