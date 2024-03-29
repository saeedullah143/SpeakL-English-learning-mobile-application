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
    apiKey: 'AIzaSyDtJ2_nC4TPOsi3zN1ZRhSgZYi-ETidD60',
    appId: '1:120109693463:web:1eb732ef5691e26b213a52',
    messagingSenderId: '120109693463',
    projectId: 'speakle-75d2c',
    authDomain: 'speakle-75d2c.firebaseapp.com',
    storageBucket: 'speakle-75d2c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCO2dutiVVbDkSHZ4PmELVVjUYeNND7lqI',
    appId: '1:120109693463:android:62bb8447c2da8500213a52',
    messagingSenderId: '120109693463',
    projectId: 'speakle-75d2c',
    storageBucket: 'speakle-75d2c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCEnwrawdbfe0YIUJdsE482T3rsA5fRhCk',
    appId: '1:120109693463:ios:1095e56f0719f574213a52',
    messagingSenderId: '120109693463',
    projectId: 'speakle-75d2c',
    storageBucket: 'speakle-75d2c.appspot.com',
    iosBundleId: 'com.example.speaklePyf',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCEnwrawdbfe0YIUJdsE482T3rsA5fRhCk',
    appId: '1:120109693463:ios:5bae38d8781ccbc0213a52',
    messagingSenderId: '120109693463',
    projectId: 'speakle-75d2c',
    storageBucket: 'speakle-75d2c.appspot.com',
    iosBundleId: 'com.example.speaklePyf.RunnerTests',
  );
}
