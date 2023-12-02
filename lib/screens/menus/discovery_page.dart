import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/screens/menus/discovery/entertainment.dart';
import 'package:flutter_uas_testing/screens/menus/discovery/fashion.dart';
import 'package:flutter_uas_testing/screens/menus/discovery/foods.dart';
import 'package:flutter_uas_testing/screens/menus/discovery/groceries.dart';
import 'package:flutter_uas_testing/screens/menus/discovery/sports.dart';
import 'package:flutter_uas_testing/utils/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../functions/gridmaker.dart';
import '../../utils/sizes.dart';
import 'package:get/get.dart';

class DiscoveryPage extends StatefulWidget {
  const DiscoveryPage({super.key});

  @override
  State<DiscoveryPage> createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  List items = [
    GridItems(
        imageUrl: 'assets/discovery/food/auntieannes.png',
        gridName: "Auntie Anne's",
        summary:
            'Auntie Anne’s got its start in 1988 when Anne Beiler bought a stand in a Pennsylvania farmer’s market. After some experimentation, “Auntie” Anne created a masterpiece — the same freshly baked goodness you know and love today. Our pretzels are made on the spot to hit the spot. In fact, our freshness guarantee guarantees you’ll love your pretzel or we’ll replace it with one that you do.',
        location: 'Location on LG - 157'),
    GridItems(
        imageUrl: 'assets/discovery/food/bakmigm.png',
        gridName: 'Bakmi GM',
        summary:
            'Formerly known as BAKMI GAJAH MADA, Mr. Tjhai Sioe and Ms. Loei Kwai Fong founded the first BAKMI GM store in Melawai in 1971. The menus of BAKMI GM are specifically designed to provide delicious flavors, made from selected materials, and served at economical prices. More than 50 menus are available to choose with new products launched regularly to provide the best service for each customer.',
        location: 'Location on LG - 107'),
    GridItems(
        imageUrl: 'assets/discovery/food/burgerking.png',
        gridName: 'Burger King',
        summary:
            'Every day, more than 11 million guests visit BURGER KING® restaurants around the world. As the original HOME OF THE WHOPPER®, our commitment to premium ingredients, signature recipes, and family-friendly dining experiences is what has defined our brand for more than 50 successful years. Burger King Indonesia opened its first Restaurant in 2007 in Jakarta and by 2017 we were serving 7 Million guests in our restaurants across 7 cities in Indonesia every year.',
        location: 'Location on LG - 248'),
    GridItems(
        imageUrl: 'assets/discovery/food/chatime.png',
        gridName: 'Chatime',
        summary:
            'Chatime means “tea time” or “time for tea.” A break time everyone – young and old – can enjoy with one of our delicious drinks. Whether you crave for a milk based tea, a traditional tea, or a fruit based tea we have everything you desire and with a unique topping to match. We also have refreshing smoothies, decadent chocolate blends, tangy yogurt mixtures, aromatic coffees, and extra special creamy mousse fusions.',
        location: 'Location on LG - 154'),
    GridItems(
        imageUrl: 'assets/discovery/food/dcrepes.png',
        gridName: "D'Crepes",
        summary:
            'Dcrepes is the pioneer of crepes in Indonesia and opened for the first time in Jakarta in 1996 & because of the extraordinary market response, we currently operate more than 66 outlets & are present in 10 major cities throughout Indonesia.',
        location: 'Location on LG - 251A'),
    GridItems(
        imageUrl: 'assets/discovery/food/fore.png',
        gridName: 'Fore Coffee',
        summary:
            'Didirikan pada 2018. Fore Coffee merupakan sebuah startup kopi retail yang ingin menyajikan high quality Coffee untuk para pelanggannya. Nama Fore yang diambil dari kata forest yang merupakan harapan kami untuk tumbuh dengan cepat, kuat, tinggi & menghidupi semua yang ada di sekitar kami. Kami ingin eksistensi kami akan membuat standar baru kopi berkualitas untuk konsumen. Memanfaatkan jaringan dan pengalaman kami, kami menggunakan teknologi mutakhir dan racikan kopi terbaik. Kopi dari petani terpilih, biji kopi berkualitas tinggi diproses dan dipanggang secara sempurna dan diteruskan oleh para barista handal. Yang selalu bersemangat dalam menyiapkan segelas kebahagiaan yang spesial untukmu.',
        location: 'Location on L1-131'),
    GridItems(
        imageUrl: 'assets/discovery/food/liangsandwich.png',
        gridName: 'Liang Sandwich',
        summary:
            'LIANG Sandwich Bar is a fast-food sandwich outlet originating from China since 2004. After 12 years of development, Liang Sandwich Bar finally presents the perfect taste of a handful of prata bread with a thousand layers of delicious crispy.',
        location: 'Location on LG - 255'),
    GridItems(
        imageUrl: 'assets/discovery/food/panco.png',
        gridName: 'Pan & Co',
        summary:
            'Pan & Co. - The First Authentic Japanese Fluffy Pancake Café in Indonesla to provide authentic Japanese fluffy exptyance through 100% Japanesè techniques. Made with fresh premium ingredients, our pancakes are naturally fluffy without baking powder or baking soda. All our sauces are freshly made daily without artificial flavorings and preservatives.',
        location: 'Location on LG - 141'),
    GridItems(
        imageUrl: 'assets/discovery/food/starbucks.png',
        gridName: 'Starbucks',
        summary:
            'We are passionate purveyors of coffee and everything else that goes with a rewarding coffeehouse experience. We also offer a selection of premium teas, fine pastries and other delectable treats to please the taste buds. We’re a neighborhood gathering place, a part of the daily routine – and we couldn’t be happier about it. Get to know us and you’ll see: we are so much more than what we brew.',
        location: 'Location on GF - 119 & 120 / GF - (by SOGO) / L1 - 133'),
    GridItems(
        imageUrl: 'assets/discovery/food/tawan.png',
        gridName: 'Ta Wan',
        summary:
            'Ta Wan has been a warmth place for gathering since 1996. From the warmth of kinship to the warm conversation between people, all met together with the warmth of various Ta Wan menus. With authentic flavors, friendly prices, and comfortable atmosphere Ta Wan feels like a second home that provided a lot of warmth in more than 19 cities in Indonesia.',
        location: 'Location on L3 - 203'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(
            top: TSizes.topPad,
            left: TSizes.leftPad,
            bottom: TSizes.botPad,
            right: TSizes.rightPad),
        child: Column(children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(bottom: 10.0),
            child: Text(
              'Discovery',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w700,
                color: secondaryColor,
              ),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      color: buttonhiglightColor,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                        onPressed: () => Get.to(
                              () => const Fashion(),
                            ),
                        color: primaryColor,
                        icon: FaIcon(FontAwesomeIcons.shirt)),
                  ),
                  Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      color: buttonhiglightColor,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                        onPressed: () => Get.to(
                              () => const Food(),
                            ),
                        color: primaryColor,
                        icon: FaIcon(FontAwesomeIcons.utensils)),
                  ),
                  Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      color: buttonhiglightColor,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                        onPressed: () => Get.to(
                              () => const Groceries(),
                            ),
                        color: primaryColor,
                        icon: FaIcon(FontAwesomeIcons.cartShopping)),
                  ),
                  Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      color: buttonhiglightColor,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                        onPressed: () => Get.to(
                              () => const Sports(),
                            ),
                        color: primaryColor,
                        icon: FaIcon(FontAwesomeIcons.volleyball)),
                  ),
                  Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      color: buttonhiglightColor,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                        onPressed: () => Get.to(
                              () => const Entertainment(),
                            ),
                        color: primaryColor,
                        icon: FaIcon(FontAwesomeIcons.film)),
                  ),
                ],
              ),
            ],
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 20.0),
            child: Text(
              'Popular Stores',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
                color: secondaryColor,
              ),
            ),
          ),
          GridMaker(gridItems: items),
        ]),
      ),
    ));
  }
}
