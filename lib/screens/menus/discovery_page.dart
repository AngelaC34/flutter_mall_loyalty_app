import 'package:flutter/material.dart';
import '../../functions/searchbar.dart';
import '../../functions/gridmaker.dart';

class DiscoveryPage extends StatefulWidget {
  const DiscoveryPage({super.key});

  @override
  State<DiscoveryPage> createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  List<GridItems> items = [
    GridItems(
      imageUrl: 'assets/GREGOOOOOR.png',
      gridItemsName: 'Event 1',
    ),
    GridItems(
      imageUrl: 'assets/Gregoricon.png',
      gridItemsName: 'Event 2',
    ),
    GridItems(
      imageUrl: 'assets/Gregorrr.png',
      gridItemsName: 'Event 1',
    ),
    GridItems(
      imageUrl: 'assets/GREGORRROROROJEROJROEJREJ.png',
      gridItemsName: 'Event 2',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 30.0, left: 20.0, bottom: 20.0),
              child: const Text(
                'Discovery',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 229, 237, 255),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 30,
              height: 50.0,
              alignment: Alignment.center,
              child: buildTextField('Search...', Icons.search_outlined),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 30.0, left: 20.0),
              child: const Text(
                'Food and Beverages',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 229, 237, 255),
                ),
              ),
            ),
            MyGridView(items: items),
          ],
        ),
      ),
    );
  }
}
