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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAmYG5G95Rm2tGc0uANqipmyGJ9sHMMHaM',
    appId: '1:842075071003:android:140b4138660f7bc525cebe',
    messagingSenderId: '842075071003',
    projectId: 'login-using-3eb38',
    storageBucket: 'login-using-3eb38.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBem6XOgPcCGdvBSvlu2nBfTmF_kMu4Xl0',
    appId: '1:842075071003:ios:58916a41c278a35825cebe',
    messagingSenderId: '842075071003',
    projectId: 'login-using-3eb38',
    storageBucket: 'login-using-3eb38.appspot.com',
    androidClientId: '842075071003-alc22qelee9sgkt7c6cerfdmr2f4sti1.apps.googleusercontent.com',
    iosClientId: '842075071003-1tll30m859cc3andu38gufgaogcl8s65.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginPageUsingGoogle',
  );
}
