// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyDSPtRvpusc-LbWEiF7muopPWgZucmVPdo',
    appId: '1:438952043103:web:9efaa78484734e3ee071ea',
    messagingSenderId: '438952043103',
    projectId: 'chat-app-9c6a3',
    authDomain: 'chat-app-9c6a3.firebaseapp.com',
    storageBucket: 'chat-app-9c6a3.firebasestorage.app',
    measurementId: 'G-68LZEB49K2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCWiyKrurYcMiuRlT8XtR6et_aRwc4qFjc',
    appId: '1:438952043103:android:ede1c0accafb5987e071ea',
    messagingSenderId: '438952043103',
    projectId: 'chat-app-9c6a3',
    storageBucket: 'chat-app-9c6a3.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA-so3UpLe_gZfOBrLkcuZ3wmsNHUH55LY',
    appId: '1:438952043103:ios:d56b58fb475277a0e071ea',
    messagingSenderId: '438952043103',
    projectId: 'chat-app-9c6a3',
    storageBucket: 'chat-app-9c6a3.firebasestorage.app',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA-so3UpLe_gZfOBrLkcuZ3wmsNHUH55LY',
    appId: '1:438952043103:ios:d56b58fb475277a0e071ea',
    messagingSenderId: '438952043103',
    projectId: 'chat-app-9c6a3',
    storageBucket: 'chat-app-9c6a3.firebasestorage.app',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDSPtRvpusc-LbWEiF7muopPWgZucmVPdo',
    appId: '1:438952043103:web:ba632424941baa71e071ea',
    messagingSenderId: '438952043103',
    projectId: 'chat-app-9c6a3',
    authDomain: 'chat-app-9c6a3.firebaseapp.com',
    storageBucket: 'chat-app-9c6a3.firebasestorage.app',
    measurementId: 'G-WPT605GHVW',
  );
}
