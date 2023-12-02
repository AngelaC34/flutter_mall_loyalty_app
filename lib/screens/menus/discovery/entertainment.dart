import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/functions/gridmaker.dart';
import 'package:flutter_uas_testing/utils/colors.dart';

class Entertainment extends StatefulWidget {
  const Entertainment({super.key});

  @override
  State<Entertainment> createState() => _EntertainmentState();
}

class _EntertainmentState extends State<Entertainment> {
  @override
  List items = [
    GridItems(
        imageUrl: 'assets/discovery/fashion/baleno.png',
        gridName: 'Baleno',
        summary:
            'Baleno is a Hong Kong clothing brand sold in Asia. It is one of the most successful fashion brands to expand into China since opening up its retail markets. A Hong Kong-listed textile company called Texwinca acquired the Baleno trademark and formed Baleno Holdings Limited in 1996. It expanded rapidly into China, becoming one of the most famous brands there, with 535 shops by 2003. An academic study credited its success to affordable prices, mass appeal, design and good quality.',
        location: 'Location on L1 120 – 121'),
    GridItems(
        imageUrl: 'assets/discovery/fashion/footlocker.png',
        gridName: 'Foot Locker',
        summary:
            'Foot Locker Retail, Inc. is an American sportswear and footwear retailer, Unlike other top footwear and apparel companies, which deal in both manufacturing and supply of athletic products, Foot Locker mainly focuses on retail. Not only is Foot Locker one of the leading athletic footwear and apparel retailers in the United States but also worldwide. Our purpose is to inspire and empower youth culture through our family of brands by fueling a shared passion for self-expression and creating unrivaled experiences at the heart of the sport and sneaker communities.',
        location: 'Location on UG – 129'),
    GridItems(
        imageUrl: 'assets/discovery/fashion/levis.png',
        gridName: "Levi's",
        summary:
            'Levi Strauss & Co. is one of the world’s largest apparel companies and a global leader in jeans. We have some 500 stores worldwide, and our products are available in more than 100 countries. What started as an invention for the American worker became the uniform of progress. Worn by miners, cowboys, rebels, rock stars, presidents and everyday men and women, these functional pieces were the clothes people not only worked in—they lived their lives in, too.',
        location: 'Limbus Company'),
    GridItems(
        imageUrl: 'assets/discovery/fashion/optikmelawai.png',
        gridName: 'Optik Melawai',
        summary:
            'We provide the best quality and widest range of exclusive optical product with proven reputation for the highest customer satisfaction. Founded in 1981 at Jalan Melawai No. 191, South Jakarta, Optik Melawai now has the most number of outlets in major cities throughout Indonesia.',
        location: 'Location on UG – 101'),
    GridItems(
        imageUrl: 'assets/discovery/fashion/pomelo.png',
        gridName: 'Pomelo',
        summary:
            'Diluncurkan pada tahun 2013, Pomelo adalah platform omnichannel terkemuka di Asia Tenggara dengan pola pikir global: on-trend, online, on-the-go. Didorong oleh minat besar terhadap teknologi, Pomelo, dengan lebih 40 juta pengunjung di situs web, menyediakan fitur omnichannel unik untuk coba sebelum membeli berjudul Tap.Try.Buy. Belanja ribuan gaya & brand terkini secara online, coba di lokasi Pomelo pilihan, dan hanya bayar untuk item yang disukai.',
        location: 'Location on UG – 201'),
    GridItems(
        imageUrl: 'assets/discovery/fashion/sephora.png',
        gridName: 'Sephora',
        summary:
            'Sephora is a visionary beauty-retail concept founded in France in 1970. Sephora’s unique, open-sell environment features an ever-increasing amount of classic and emerging brands across a broad range of product categories including skincare, makeup, fragrance, body and hair care, in addition to Sephora’s own private label.',
        location: 'Location on GF – 102 & 103'),
    GridItems(
        imageUrl: 'assets/discovery/fashion/thisisapril.png',
        gridName: 'This Is April', //masih bulan november :(
        summary:
            'We strongly believes every woman deserves to be comfortable in their own skin. Providing them the priviledge to have a range of quality clothes.',
        location: 'Location on L3 – 106'),
    GridItems(
        imageUrl: 'assets/discovery/fashion/zara.png',
        gridName: 'Zara',
        summary:
            'Zara is one of the largest international fashion companies belongs to Inditex, one of the world’s largest distribution groups. The customer is at the heart of our unique business model, which includes design, production, distribution and sales through our extensive retail network.',
        location: 'Location on GF – 201'),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.0,
        backgroundColor: primaryColor,
        elevation: 0,
        title: Text(
          'Sports',
          style: TextStyle(
              color: secondaryColor,
              fontSize: 30.0,
              fontWeight: FontWeight.w700),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: buttonhiglightColor,
            size: 30.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: GridMaker(gridItems: items),
      ),
    );
  }
}
