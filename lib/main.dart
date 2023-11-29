import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';
import 'screens/firstpage.dart';
import 'package:get/get.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'signin.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   if (kIsWeb) {
//     await Firebase.initializeApp(
//       options: FirebaseOptions(
//         apiKey: "AIzaSyDkrj39j7DTLjEl1qCetF4LP1GNiDxcXHA",
//         authDomain: "uas-flutter-9c4a7.firebaseapp.com",
//         projectId: "uas-flutter-9c4a7",
//         storageBucket: "uas-flutter-9c4a7.appspot.com",
//         messagingSenderId: "856302513085",
//         appId: "1:856302513085:web:2b7f4978759a9d2cbc00d4",
//         measurementId: "G-T7D5EC6ZHX",
//       ),
//     );
//   }
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: primaryColor,
        fontFamily: 'SairaSemiCondensed',
      ),
      
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const ShopPage(),
      //   'cart_page': (context) => const CartPage(),
      //   'notification_page': (context) => const NotificationPage(),
      //   'promo_page': (context) => const PromoPage(),
      //   'question_page': (context) => const QuestionPage(),
      //   'aboutus_page': (context) => const AboutUsPage(),
      // },
      home: FirstPage(),
    );
  }
}

// class CartPage extends StatelessWidget {
//   const CartPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Cart Page'),
//       ),
//       body: const Column(
//         children: [
//           Text('Your cart content goes here'),
//         ],
//       ),
//     );
//   }
// }

// class NotificationPage extends StatelessWidget {
//   const NotificationPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Notification'),
//       ),
//       body: const Center(
//         child: Text(''),
//       ),
//     );
//   }
// }

// class PromoPage extends StatelessWidget {
//   const PromoPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Promo'),
//       ),
//     );
//   }
// }

// //  Mybutton(
// //     onTap() {
// //       Navigator.pushNamed(context, '/promopage');
// //     }
// //   )

// class QuestionPage extends StatelessWidget {
//   const QuestionPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('FAQ Page'),
//       ),
//       body: const Center(
//         child: Text('Your question goes here'),
//       ),
//     );
//   }
// }

// class AboutUsPage extends StatelessWidget {
//   const AboutUsPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('About Us Page'),
//       ),
//       body: const Center(
//         child: Text('Your content goes here'),
//       ),
//     );
//   }
// }
