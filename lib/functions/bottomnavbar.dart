import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../screens/mainpage.dart';
import '../screens/menus/discovery_page.dart';
import '../screens/menus/profilepage.dart';
import '../screens/menus/cardpage.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavController());
    return Scaffold(
      backgroundColor: buttonhiglightColor,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: buttonhiglightColor,
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
          child: Obx(
            () => BottomNavigationBar(
              selectedItemColor: primaryColor,
              unselectedItemColor: primaryColor,
              elevation: 0,
              currentIndex: controller.selectedIndex.value,
              onTap: (index) => controller.selectedIndex.value = index,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.arrowPointer),
                  label: 'Discovery',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.star_rounded),
                  label: 'Card',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ],
            ),
          ),
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
    const CardPage(),
    const ProfilePage(),
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
