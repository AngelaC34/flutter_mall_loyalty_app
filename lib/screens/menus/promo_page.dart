import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../functions/card.dart';

class PromoPage extends StatefulWidget {
  const PromoPage({super.key});

  @override
  State<PromoPage> createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 183, 198, 231),
      appBar: AppBar(
        toolbarHeight: 60.0,
        backgroundColor: const Color.fromARGB(255, 62, 71, 114),
        elevation: 0,
        title: const Text(
          'Promos',
          style: TextStyle(
              color: Color.fromARGB(255, 229, 237, 255),
              fontSize: 30.0,
              fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Color.fromARGB(255, 229, 237, 255),
            size: 30.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            card('assets/GREGORRROROROJEROJROEJREJ.png', 'Promo 1'),
            card('assets/GREGORRROROROJEROJROEJREJ.png', 'Promo 1'),
            card('assets/GREGORRROROROJEROJROEJREJ.png', 'Promo 1'),
            card('assets/GREGORRROROROJEROJROEJREJ.png', 'Promo 1'),
            card('assets/GREGORRROROROJEROJROEJREJ.png', 'Promo 1')
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class PromoPage extends StatefulWidget {
//   const PromoPage({Key? key}) : super(key: key);

//   @override
//   State<PromoPage> createState() => _PromoPageState();
// }

// class _PromoPageState extends State<PromoPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       appBar: AppBar(),
//       body: Column(
//         children: [
//           // Promo banner
//           Container(
//             child: Row(
//               children: [
//                 Text('Get 10% off for your first purchase!'),

//                 // Redeem button
//                 MyButton(
//                   text: "Redeem",
//                   onTap: () {
//                     // Add your redeem logic here
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MyButton extends StatelessWidget {
//   final String text;
//   final VoidCallback onTap;

//   const MyButton({required this.text, required this.onTap});

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: onTap,
//       child: Text(text),
//     );
//   }
// }
