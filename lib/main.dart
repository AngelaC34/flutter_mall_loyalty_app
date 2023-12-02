import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';
import 'screens/firstpage.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyC9KW_nNL0CYTlEHqYqoGW8xh4dtf8E_zA",
        authDomain: "uas-flutter-eade1.firebaseapp.com",
        projectId: "uas-flutter-eade1",
        storageBucket: "uas-flutter-eade1.appspot.com",
        messagingSenderId: "52048075633",
        appId: "1:52048075633:web:5fdd30d443c0e4c4f074d0",
        measurementId: "G-P8S20Y5BKY"),
  );
  runApp(MyApp());
}

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: primaryColor,
        fontFamily: 'SairaSemiCondensed',
      ),
      home: FirstPage(),
    );
  }
}
