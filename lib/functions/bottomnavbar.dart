import 'package:flutter/material.dart';
import '../screens/mainpage.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      _pageController.animateToPage(index,
          duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          HomePage(),
        ],
        onPageChanged: (index) {
          setState(
            () {
              _currentIndex = index;
            },
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Color.fromARGB(255, 229, 237, 255),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assistant_navigation),
            backgroundColor: Color.fromARGB(255, 229, 237, 255),
            label: 'Discovery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_membership_rounded),
            backgroundColor: Color.fromARGB(255, 229, 237, 255),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            backgroundColor: Color.fromARGB(255, 229, 237, 255),
            label: 'User',
          ),
        ],
      ),
    );
  }
}
