import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyATmvBlqvrp8jwJoxz1HaEK2GVnwdRefT4",
            authDomain: "homebuzz-b8866.firebaseapp.com",
            projectId: "homebuzz-b8866",
            storageBucket: "homebuzz-b8866.appspot.com",
            messagingSenderId: "623944252699",
            appId: "1:623944252699:web:afb3ee20a3a3e8b38ae7be",
            measurementId: "G-3BKP9NBZCP"));
  } else {
    await Firebase.initializeApp();
  }
}
