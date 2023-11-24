import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../screens/mainpage.dart';
import '../screens/menus/discovery_page.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavController());
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 229, 237, 255),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          selectedItemColor: Color.fromARGB(255, 62, 71, 114),
          unselectedItemColor: Color.fromARGB(255, 183, 198, 231),
          elevation: 0,
          currentIndex: controller.selectedIndex.value,
          onTap: (index) => controller.selectedIndex.value = index,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.arrowPointer),
              label: 'Discovery',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomePage(),
    const DiscoveryPage(),
    Container(color: Colors.pinkAccent),
    Container(color: Colors.tealAccent),
  ];
}


// import 'package:flutter/material.dart';
// import '../screens/mainpage.dart';

// class BottomNavBar extends StatefulWidget {
//   const BottomNavBar({Key? key}) : super(key: key);

//   @override
//   State<BottomNavBar> createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar> {
//   late PageController _pageController;
//   int _currentIndex = 0;

//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController(initialPage: _currentIndex);
//   }

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   void _onItemTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//       _pageController.animateToPage(index,
//           duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(
//         controller: _pageController,
//         children: [
//           HomePage(),
//         ],
//         onPageChanged: (index) {
//           setState(
//             () {
//               _currentIndex = index;
//             },
//           );
//         },
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: _onItemTapped,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             backgroundColor: Color.fromARGB(255, 229, 237, 255),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.assistant_navigation),
//             backgroundColor: Color.fromARGB(255, 229, 237, 255),
//             label: 'Discovery',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.card_membership_rounded),
//             backgroundColor: Color.fromARGB(255, 229, 237, 255),
//             label: 'Card',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             backgroundColor: Color.fromARGB(255, 229, 237, 255),
//             label: 'User',
//           ),
//         ],
//       ),
//     );
//   }
// }
