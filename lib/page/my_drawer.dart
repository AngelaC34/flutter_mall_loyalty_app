// import 'package:flutter/material.dart';

// class MyDrawer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       backgroundColor: Color.fromARGB(187, 9, 41, 109),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Column(
//             children: [
//               DrawerHeader(
//                 child: Center(
//                   child: Icon(
//                     Icons.shopping_bag,
//                     size: 72,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 25),
//               MyListTile(
//                 text: "Shop",
//                 icon: Icons.home,
//                 onTap: () => Navigator.pop(context),
//                 textColor: Colors.white, // Set text color to white
//               ),
//               MyListTile(
//                 text: "Cart",
//                 icon: Icons.shopping_cart,
//                 onTap: () {
//                   Navigator.pop(context);
//                   Navigator.pushNamed(context, 'cart_page');
//                 },
//                 textColor: Colors.white, // Set text color to white
//               ),
//               MyListTile(
//                 text: "Notification",
//                 icon: Icons.notifications_none_sharp,
//                 onTap: () {
//                   Navigator.pop(context);
//                   Navigator.pushNamed(context, 'notification_page');
//                 },
//                 textColor: Colors.white, // Set text color to white
//               ),
//               MyListTile(
//                 text: "Promo",
//                 icon: Icons.discount_outlined,
//                 onTap: () {
//                   Navigator.pop(context);
//                   Navigator.pushNamed(context, 'promo_page');
//                 },
//                 textColor: Colors.white, // Set text color to white
//               ),
//               MyListTile(
//                 text: "FAQ",
//                 icon: Icons.question_answer_outlined,
//                 onTap: () {
//                   Navigator.pop(context);
//                   Navigator.pushNamed(context, 'question_page');
//                 },
//                 textColor: Colors.white, // Set text color to white
//               ),
//               MyListTile(
//                 text: "About Us",
//                 icon: Icons.info_outline,
//                 onTap: () {
//                   Navigator.pop(context);
//                   Navigator.pushNamed(context, 'aboutus_page');
//                 },
//                 textColor: Colors.white, // Set text color to white
//               ),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.only(bottom: 25.0),
//             child: MyListTile(
//               text: "Exit",
//               icon: Icons.logout,
//               onTap: () {},
//               textColor: Colors.white, // Set text color to white
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MyListTile extends StatelessWidget {
//   final String text;
//   final IconData icon;
//   final VoidCallback onTap;
//   final Color textColor; // Add a new property for text color

//   const MyListTile({
//     required this.text,
//     required this.icon,
//     required this.onTap,
//     required this.textColor, // Require text color in the constructor
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(
//         text,
//         style: TextStyle(color: textColor), // Set text color using style
//       ),
//       leading: Icon(icon, color: textColor), // Set icon color
//       onTap: onTap,
//     );
//   }
// }
