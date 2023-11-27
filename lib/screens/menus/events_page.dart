// import 'package:flutter/material.dart';
// import 'package:flutter_uas_testing/screens/popupscreens/popup.dart';
// import 'package:get/get.dart';
// import '../../functions/card.dart';

// class EventsPage extends StatelessWidget {
//   EventsPage({super.key});
//   final items = CardItems.getCardItems();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Color.fromARGB(255, 183, 198, 231),
//         appBar: AppBar(
//           toolbarHeight: 60.0,
//           backgroundColor: const Color.fromARGB(255, 62, 71, 114),
//           elevation: 0,
//           title: const Text(
//             'Events',
//             style: TextStyle(
//                 color: Color.fromARGB(255, 229, 237, 255),
//                 fontSize: 30.0,
//                 fontWeight: FontWeight.w600),
//           ),
//           leading: IconButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             icon: const Icon(
//               Icons.arrow_back_ios_new_rounded,
//               color: Color.fromARGB(255, 229, 237, 255),
//               size: 30.0,
//             ),
//           ),
//         ),
//         body: ListView.builder(
//             itemCount: items.length,
//             itemBuilder: (context, index) {
//               return GestureDetector(
//                 child: CardBox(item: items[index]),
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => PopUp(item: items[index]),
//                     ),
//                   );
//                 },
//               );
//             },),);
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/screens/popupscreens/popup.dart';
import 'package:get/get.dart';
import '../../functions/card.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  List items = [
    CardItems(
        imageUrl: 'assets/GWEGORRRRRRR.png',
        cardName: 'Gregor',
        summary:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisi quis eleifend quam adipiscing vitae proin sagittis. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec. Est ante in nibh mauris cursus mattis molestie a iaculis. Consequat interdum varius sit amet mattis vulputate enim nulla. A pellentesque sit amet porttitor. Lacus laoreet non curabitur gravida. Turpis massa sed elementum tempus egestas sed sed risus. Dictum non consectetur a erat. Libero justo laoreet sit amet cursus sit amet. Volutpat lacus laoreet non curabitur gravida.',
        location: 'Limbus Company'),
    CardItems(
        imageUrl: 'assets/GWEGORRRRRRR.png',
        cardName: 'Gregor',
        summary:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisi quis eleifend quam adipiscing vitae proin sagittis. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec. Est ante in nibh mauris cursus mattis molestie a iaculis. Consequat interdum varius sit amet mattis vulputate enim nulla. A pellentesque sit amet porttitor. Lacus laoreet non curabitur gravida. Turpis massa sed elementum tempus egestas sed sed risus. Dictum non consectetur a erat. Libero justo laoreet sit amet cursus sit amet. Volutpat lacus laoreet non curabitur gravida.',
        location: 'Limbus Company')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 183, 198, 231),
      appBar: AppBar(
        toolbarHeight: 60.0,
        backgroundColor: const Color.fromARGB(255, 62, 71, 114),
        elevation: 0,
        title: const Text(
          'Events',
          style: TextStyle(
            color: Color.fromARGB(255, 229, 237, 255),
            fontSize: 30.0,
            fontWeight: FontWeight.w600,
          ),
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
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: items.length,
              itemBuilder: (context, index) => CardBox(
                cardItems: items[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// class EventsPage extends StatefulWidget {
//   EventsPage({super.key});
  

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 183, 198, 231),
//       appBar: AppBar(
//         toolbarHeight: 60.0,
//         backgroundColor: const Color.fromARGB(255, 62, 71, 114),
//         elevation: 0,
//         title: const Text(
//           'Events',
//           style: TextStyle(
//             color: Color.fromARGB(255, 229, 237, 255),
//             fontSize: 30.0,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//         leading: IconButton(
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//           icon: const Icon(
//             Icons.arrow_back_ios_new_rounded,
//             color: Color.fromARGB(255, 229, 237, 255),
//             size: 30.0,
//           ),
//         ),
//       ),
//       body: ListView.builder(
//         itemCount: items.length,
//         itemBuilder: (context, index) {
//           return GestureDetector(
//             child: CardBox(item: items[index]),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => PopUp(item: items[index]),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
  
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     throw UnimplementedError();
//   }
// }
