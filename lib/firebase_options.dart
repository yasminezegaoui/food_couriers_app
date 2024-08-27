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
    apiKey: 'AIzaSyCKv-PW5J6Gm2ZzqEHKcG9DcjIEYUEgk-k',
    appId: '1:52451256250:web:c3e93cf10ae79417095f83',
    messagingSenderId: '52451256250',
    projectId: 'food-couriers-app-fb699',
    authDomain: 'food-couriers-app-fb699.firebaseapp.com',
    storageBucket: 'food-couriers-app-fb699.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDBHN0B_MFPThTBQBSAlnTXS8yZjycZHCE',
    appId: '1:52451256250:android:70e0f5cc3d77f3a6095f83',
    messagingSenderId: '52451256250',
    projectId: 'food-couriers-app-fb699',
    storageBucket: 'food-couriers-app-fb699.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAR-Xa6LWdjLDlISVoW4nxi0JSqpCkz5PE',
    appId: '1:52451256250:ios:51bdf19d638ed0d9095f83',
    messagingSenderId: '52451256250',
    projectId: 'food-couriers-app-fb699',
    storageBucket: 'food-couriers-app-fb699.appspot.com',
    iosBundleId: 'com.example.foodCouriersApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAR-Xa6LWdjLDlISVoW4nxi0JSqpCkz5PE',
    appId: '1:52451256250:ios:51bdf19d638ed0d9095f83',
    messagingSenderId: '52451256250',
    projectId: 'food-couriers-app-fb699',
    storageBucket: 'food-couriers-app-fb699.appspot.com',
    iosBundleId: 'com.example.foodCouriersApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCKv-PW5J6Gm2ZzqEHKcG9DcjIEYUEgk-k',
    appId: '1:52451256250:web:6b98f6a41dc71cfa095f83',
    messagingSenderId: '52451256250',
    projectId: 'food-couriers-app-fb699',
    authDomain: 'food-couriers-app-fb699.firebaseapp.com',
    storageBucket: 'food-couriers-app-fb699.appspot.com',
  );
}
