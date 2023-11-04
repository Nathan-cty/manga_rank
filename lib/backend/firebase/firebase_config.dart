import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAjbTuDzeOs1fk-up1SpierIIEDX21o1Sg",
            authDomain: "mangarank-e692a.firebaseapp.com",
            projectId: "mangarank-e692a",
            storageBucket: "mangarank-e692a.appspot.com",
            messagingSenderId: "321984015489",
            appId: "1:321984015489:web:140477dc4c393f4c963180",
            measurementId: "G-XYJXFHFCPW"));
  } else {
    await Firebase.initializeApp();
  }
}
