import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBEYsDxxZQtmKlpYGO8mDF5qsquKvf4_tU",
            authDomain: "project-kly-8882e.firebaseapp.com",
            projectId: "project-kly-8882e",
            storageBucket: "project-kly-8882e.appspot.com",
            messagingSenderId: "30694323544",
            appId: "1:30694323544:web:577b0eaaff2182afb7612d",
            measurementId: "G-E2QST8NB3E"));
  } else {
    await Firebase.initializeApp();
  }
}
