import 'package:flutter/material.dart';
import '../../functions/searchbar.dart';
import '../../functions/gridmaker.dart';

class DiscoveryPage extends StatefulWidget {
  const DiscoveryPage({super.key});

  @override
  State<DiscoveryPage> createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  //FOOD AND BEVERAGES
  List<GridItems> imgFood = [
    GridItems(
      imageUrl: "assets/discovery/food/auntieannes.jpg",
      gridItemsName: "Auntie Anne's",
    ),
    GridItems(
      imageUrl: "assets/discovery/food/bakmigm.jpg",
      gridItemsName: 'Bakmi GM',
    ),
    GridItems(
      imageUrl: "assets/discovery/food/burgerking.jpg",
      gridItemsName: 'Burger King',
    ),
    GridItems(
      imageUrl: "assets/discovery/food/chatime.jpg",
      gridItemsName: 'Chatime',
    ),
    GridItems(
      imageUrl: "assets/discovery/food/dcrepes.jpg",
      gridItemsName: "D'Crepes",
    ),
    GridItems(
      imageUrl: "assets/discovery/food/fore.jpg",
      gridItemsName: 'Fore Coffee',
    ),
    GridItems(
      imageUrl: "assets/discovery/food/liangsandwich.jpg",
      gridItemsName: 'Liang Sandwich',
    ),
    GridItems(
      imageUrl: "assets/discovery/food/panco.jpg",
      gridItemsName: 'Pan & Co.',
    ),
    GridItems(
      imageUrl: "assets/discovery/food/starbucks.jpg",
      gridItemsName: 'Starbucks',
    ),
    GridItems(
      imageUrl: "assets/discovery/food/tawan.jpg",
      gridItemsName: 'Ta Wan',
    ),
  ];

  //GROCERIES
  List<GridItems> imgGroceries = [
    GridItems(
      imageUrl: "assets/discovery/groceries/kkv.png",
      gridItemsName: 'KKV',
    ),
    GridItems(
      imageUrl: "assets/discovery/groceries/miniso.jpg",
      gridItemsName: 'Miniso',
    ),
  ];

  //FASHION AND ACCESSORIES
  List<GridItems> imgFashion = [
    GridItems(
      imageUrl: "assets/discovery/fashion/baleno.png",
      gridItemsName: 'Baleno',
    ),
    GridItems(
      imageUrl: "assets/discovery/fashion/footlocker.jpg",
      gridItemsName: 'Foot Locker',
    ),
    GridItems(
      imageUrl: "assets/discovery/fashion/levis.jpg",
      gridItemsName: "Levi's",
    ),
    GridItems(
      imageUrl: "assets/discovery/fashion/optikmelawai.jpg",
      gridItemsName: 'Optik Melawai',
    ),
    GridItems(
      imageUrl: "assets/discovery/fashion/pomelo.jpg",
      gridItemsName: 'Pomelo',
    ),
    GridItems(
      imageUrl: "assets/discovery/fashion/sephora.jpg",
      gridItemsName: 'Sephora',
    ),
    GridItems(
      imageUrl: "assets/discovery/fashion/thisisapril.jpg",
      gridItemsName: 'This Is April',
    ),
    GridItems(
      imageUrl: "assets/discovery/fashion/zara.jpg",
      gridItemsName: 'Zara',
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
              padding: EdgeInsets.only(top: 50.0, left: 20.0, bottom: 20.0),
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
              padding: EdgeInsets.only(top: 40.0, left: 20.0),
              child: const Text(
                'Food and Beverages',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 229, 237, 255),
                ),
              ),
            ),
            MyGridView(items: imgFood),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 40.0, left: 20.0),
              child: const Text(
                'Groceries',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 229, 237, 255),
                ),
              ),
            ),
            MyGridView(items: imgGroceries),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 40.0, left: 20.0),
              child: const Text(
                'Fashion and Accessories',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 229, 237, 255),
                ),
              ),
            ),
            MyGridView(items: imgFashion),
          ],
        ),
      ),
    );
  }
}
