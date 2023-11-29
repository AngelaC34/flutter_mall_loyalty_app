import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';
import '../../functions/searchbar.dart';
import '../../functions/gridmaker.dart';
import '../../utils/sizes.dart';

class DiscoveryPage extends StatefulWidget {
  const DiscoveryPage({super.key});

  @override
  State<DiscoveryPage> createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  List food = [
    GridItems(
        imageUrl: 'assets/discovery/food/auntieannes.jpg',
        gridName: "Auntie Anne's",
        summary:
              'Auntie Anne’s got its start in 1988 when Anne Beiler bought a stand in a Pennsylvania farmer’s market. After some experimentation, “Auntie” Anne created a masterpiece — the same freshly baked goodness you know and love today. Our pretzels are made on the spot to hit the spot. In fact, our freshness guarantee guarantees you’ll love your pretzel or we’ll replace it with one that you do.',
        location: 'Location on LG - 157'),
    GridItems(  
        imageUrl: 'assets/discovery/food/bakmigm.jpg',
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
        imageUrl: 'assets/discovery/food/chatime.jpg',
        gridName: 'Chatime',
        summary:
            'Chatime means “tea time” or “time for tea.” A break time everyone - young and old - can enjoy with one of our delicious drinks. Whether you crave for a milk based tea, a traditional tea, or a fruit based tea we have everything you desire and with a unique topping to match. We also have refreshing smoothies, decadent chocolate blends, tangy yogurt mixtures, aromatic coffees, and extra special creamy mousse fusions.',
        location: 'Location on LG - 154'),
    GridItems(
        imageUrl: 'assets/discovery/food/dcrepes.jpg',
        gridName: "D'Crepes",
        summary:
            'Dcrepes is the pioneer of crepes in Indonesia and opened for the first time in Jakarta in 1996 & because of the extraordinary market response, we currently operate more than 66 outlets & are present in 10 major cities throughout Indonesia.',
        location: 'Location on LG - 251A'),
    GridItems(
        imageUrl: 'assets/discovery/food/fore.jpg',
        gridName: 'Fore Coffee',
        summary:
            'Didirikan pada 2018. Fore Coffee merupakan sebuah startup kopi retail yang ingin menyajikan high quality Coffee untuk para pelanggannya. Nama Fore yang diambil dari kata forest yang merupakan harapan kami untuk tumbuh dengan cepat, kuat, tinggi & menghidupi semua yang ada di sekitar kami. Kami ingin eksistensi kami akan membuat standar baru kopi berkualitas untuk konsumen. Memanfaatkan jaringan dan pengalaman kami, kami menggunakan teknologi mutakhir dan racikan kopi terbaik. Kopi dari petani terpilih, biji kopi berkualitas tinggi diproses dan dipanggang secara sempurna dan diteruskan oleh para barista handal. Yang selalu bersemangat dalam menyiapkan segelas kebahagiaan yang spesial untukmu.',
        location: 'Location on L1-131'),
    GridItems(
        imageUrl: 'assets/discovery/food/liangsandwich.jpg',
        gridName: 'Liang Sandwich',
        summary:
            'LIANG Sandwich Bar is a fast-food sandwich outlet originating from China since 2004. After 12 years of development, Liang Sandwich Bar finally presents the perfect taste of a handful of prata bread with a thousand layers of delicious crispy.',
        location: 'Location on LG - 255'),
    GridItems(
        imageUrl: 'assets/discovery/food/panco.jpg',
        gridName: 'Pan & Co',
        summary:
            'Pan & Co. - The First Authentic Japanese Fluffy Pancake Café in Indonesla to provide authentic Japanese fluffy exptyance through 100% Japanesè techniques. Made with fresh premium ingredients, our pancakes are naturally fluffy without baking powder or baking soda. All our sauces are freshly made daily without artificial flavorings and preservatives.',
        location: 'Location on LG - 141'),
    GridItems(
        imageUrl: 'assets/discovery/food/starbucks.jpg',
        gridName: 'Starbucks',
        summary:
            'We are passionate purveyors of coffee and everything else that goes with a rewarding coffeehouse experience. We also offer a selection of premium teas, fine pastries and other delectable treats to please the taste buds. We’re a neighborhood gathering place, a part of the daily routine - and we couldn’t be happier about it. Get to know us and you’ll see: we are so much more than what we brew.',
        location: 'Location on GF - 119 & 120 / GF - (by SOGO) / L1 - 133'),
    GridItems(
        imageUrl: 'assets/discovery/food/tawan.jpg',
        gridName: 'Ta Wan',
        summary:
            'Ta Wan has been a warmth place for gathering since 1996. From the warmth of kinship to the warm conversation between people, all met together with the warmth of various Ta Wan menus. With authentic flavors, friendly prices, and comfortable atmosphere Ta Wan feels like a second home that provided a lot of warmth in more than 19 cities in Indonesia.',
        location: 'Location on L3 - 203'),
  ];

  List groceries = [
    GridItems(
        imageUrl: 'assets/discovery/groceries/kkv.png',
        gridName: 'KKV',
        summary:
            'KKV is generated from KK Guan as an independent W-brand. KKV was set up in May 2019, which serves as an integrated shop of exquisite life style.',
        location: 'Location on LGM - 01'),
    GridItems(
        imageUrl: 'assets/discovery/groceries/miniso.jpg',
        gridName: 'Miniso',
        summary:
            'MINISO advocates the philosophy of quality life and in the brand spirit of “respecting consumers”, dedicates itself to providing customers with products of “high quality, competitive price and creativity”. With simple and quality features as well as leading the trend of intelligent consumption, MINISO enriches our lives with a wide range of products at reasonable prices.',
        location: 'Location on L1 - 109 & 110'),
  ];

  List fashion = [
    GridItems(
        imageUrl: 'assets/discovery/fashion/baleno.png',
        gridName: 'Baleno',
        summary:
            'Baleno is a Hong Kong clothing brand sold in Asia. It is one of the most successful fashion brands to expand into China since opening up its retail markets. A Hong Kong-listed textile company called Texwinca acquired the Baleno trademark and formed Baleno Holdings Limited in 1996. It expanded rapidly into China, becoming one of the most famous brands there, with 535 shops by 2003. An academic study credited its success to affordable prices, mass appeal, design and good quality.',
        location: 'Location on L1 120 - 121'),
    GridItems(
        imageUrl: 'assets/discovery/fashion/footlocker.jpg',
        gridName: 'Foot Locker',
        summary:
            'Foot Locker Retail, Inc. is an American sportswear and footwear retailer, Unlike other top footwear and apparel companies, which deal in both manufacturing and supply of athletic products, Foot Locker mainly focuses on retail. Not only is Foot Locker one of the leading athletic footwear and apparel retailers in the United States but also worldwide. Our purpose is to inspire and empower youth culture through our family of brands by fueling a shared passion for self-expression and creating unrivaled experiences at the heart of the sport and sneaker communities.',
        location: 'Location on UG - 129'),
    GridItems(
        imageUrl: 'assets/discovery/fashion/levis.jpg',
        gridName: "Levi's",
        summary:
            'Levi Strauss & Co. is one of the world’s largest apparel companies and a global leader in jeans. We have some 500 stores worldwide, and our products are available in more than 100 countries. What started as an invention for the American worker became the uniform of progress. Worn by miners, cowboys, rebels, rock stars, presidents and everyday men and women, these functional pieces were the clothes people not only worked in—they lived their lives in, too.',
        location: 'Location on UG - 109'),
    GridItems(
        imageUrl: 'assets/discovery/fashion/optikmelawai.jpg',
        gridName: 'Optik Melawai',
        summary:
            'We provide the best quality and widest range of exclusive optical product with proven reputation for the highest customer satisfaction. Founded in 1981 at Jalan Melawai No. 191, South Jakarta, Optik Melawai now has the most number of outlets in major cities throughout Indonesia.',
        location: 'Location on UG - 101'),
    GridItems(
        imageUrl: 'assets/discovery/fashion/pomelo.jpg',
        gridName: 'Pomelo',
        summary:
            'Diluncurkan pada tahun 2013, Pomelo adalah platform omnichannel terkemuka di Asia Tenggara dengan pola pikir global: on-trend, online, on-the-go. Didorong oleh minat besar terhadap teknologi, Pomelo, dengan lebih 40 juta pengunjung di situs web, menyediakan fitur omnichannel unik untuk coba sebelum membeli berjudul Tap.Try.Buy. Belanja ribuan gaya & brand terkini secara online, coba di lokasi Pomelo pilihan, dan hanya bayar untuk item yang disukai.',
        location: 'Location on UG - 201'),
    GridItems(
        imageUrl: 'assets/discovery/fashion/sephora.jpg',
        gridName: 'Sephora',
        summary:
            'Sephora is a visionary beauty-retail concept founded in France in 1970. Sephora’s unique, open-sell environment features an ever-increasing amount of classic and emerging brands across a broad range of product categories including skincare, makeup, fragrance, body and hair care, in addition to Sephora’s own private label.',
        location: 'Location on GF - 102 & 103'),
    GridItems(
        imageUrl: 'assets/discovery/fashion/thisisapril.jpg',
        gridName: 'This Is April',
        summary:
            'We strongly believes every woman deserves to be comfortable in their own skin. Providing them the priviledge to have a range of quality clothes.',
        location: 'Location on L3 - 106'),
    GridItems(
        imageUrl: 'assets/discovery/fashion/zara.jpg',
        gridName: 'Zara',
        summary:
            'Zara is one of the largest international fashion companies belongs to Inditex, one of the world’s largest distribution groups. The customer is at the heart of our unique business model, which includes design, production, distribution and sales through our extensive retail network.',
        location: 'Location on GF - 201'),
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
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    'Discovery',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w700,
                      color: secondaryColor,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 30,
                  height: 50.0,
                  // margin: EdgeInsets.only(bottom: 20.0),
                  alignment: Alignment.center,
                  child: buildTextField('Search...', Icons.search_outlined),
                ),
                // Divider(
                //   indent: 20.0,
                //   endIndent: 20.0,
                //   color: texthighlightColor,
                //   height: 5.0,
                // ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    'Food and Beverages',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                      color: secondaryColor,
                    ),
                  ),
                ),
                GridMaker(gridItems: food),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: 40.0),
                  child: Text(
                    'Groceries',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                      color: secondaryColor,
                    ),
                  ),
                ),
                GridMaker(gridItems: groceries),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: 40.0),
                  child: Text(
                    'Fashion And Accessories',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                      color: secondaryColor,
                    ),
                  ),
                ),
                GridMaker(gridItems: fashion),
              ],
            ),
          ),
        ),
      );
    }
  }
