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
    apiKey: 'AIzaSyBFlIkRgpALO-WbpFbnwcBYi03ADvtGOPA',
    appId: '1:287335259608:web:ed3f8ec8af9967682a66ad',
    messagingSenderId: '287335259608',
    projectId: 'uiproject-6b589',
    authDomain: 'uiproject-6b589.firebaseapp.com',
    storageBucket: 'uiproject-6b589.appspot.com',
    measurementId: 'G-2G1WX52Y8H',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAYqAa_gE_LPjnWBSCjqmP8hE8hgiAMW3c',
    appId: '1:287335259608:android:0e17f2bbd1b96c292a66ad',
    messagingSenderId: '287335259608',
    projectId: 'uiproject-6b589',
    storageBucket: 'uiproject-6b589.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBEYRw96a1jGiRNBInsu7YtN5i5ej0IB10',
    appId: '1:287335259608:ios:8741e79f62f6c8122a66ad',
    messagingSenderId: '287335259608',
    projectId: 'uiproject-6b589',
    storageBucket: 'uiproject-6b589.appspot.com',
    iosBundleId: 'com.example.ui',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBEYRw96a1jGiRNBInsu7YtN5i5ej0IB10',
    appId: '1:287335259608:ios:c5b054c2fef009b52a66ad',
    messagingSenderId: '287335259608',
    projectId: 'uiproject-6b589',
    storageBucket: 'uiproject-6b589.appspot.com',
    iosBundleId: 'com.example.ui.RunnerTests',
  );
}
