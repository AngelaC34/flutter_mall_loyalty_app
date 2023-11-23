import 'package:flutter/material.dart';
import 'firstpage.dart';
// import 'signin.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),

      home: FirstPage(),
    );
  }
}