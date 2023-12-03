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
        imageUrl: 'assets/discovery/entertainment/cgvcinemas.jpg',
        gridName: 'CGV* CINEMAS',
        summary:
            'CGV Cinemas didirikan pada tahun 2004 oleh sekelompok investor lokal yang memiliki pengalaman yang luas dalam pengembangan properti, hiburan, dan usaha kewirausahaan. Tahun 2006 merupakan salah satu tonggak sejarah Perseroan karena di tahun ini Perseroan berhasil membuka bioskop pertama Perseroan di Paris Van Java Bandung. Kemudian di tahun 2014 Perseroan menjadi Perusahaan bioskop pertama dan satu-satunya yang menjadi Perusahaan Tercatat di Bursa Efek Indonesia dan berkolaborasi dengan Global Cinema Player terkemuka asal Korea Selatan yakni CJ CGV.',
        location: 'Location on L8 – 101'),
    GridItems(
        imageUrl: 'assets/discovery/entertainment/funworld.jpg',
        gridName: 'FUNWORLD',
        summary:
            'Starting with an inspiration to bring joy and happy smiles to Indonesian families, in 1983 in Jakarta a company engaged in the field of entertainment and family recreation services is now known as the trademark FUNWORLD. As one of the pioneers in the business of recreational parks and family playgrounds in the country, FUNWORLD continues to strive to create the best and most complete family entertainment arena by always presenting various types of the latest games, friendly service, and safe and comfortable recreation atmosphere.',
        location: 'Location on L3 – 201'),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.0,
        backgroundColor: primaryColor,
        elevation: 0,
        title: Text(
          'Entertainment',
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
