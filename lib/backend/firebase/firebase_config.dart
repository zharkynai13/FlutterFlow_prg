import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCmyEVctl-NQvoYsiW-EJs3mrI7LRcoJCI",
            authDomain: "koreacars-b5df3.firebaseapp.com",
            projectId: "koreacars-b5df3",
            storageBucket: "koreacars-b5df3.appspot.com",
            messagingSenderId: "714247053537",
            appId: "1:714247053537:web:14e1d2e43f75f619e097a0",
            measurementId: "G-07E7WR3QCK"));
  } else {
    await Firebase.initializeApp();
  }
}
