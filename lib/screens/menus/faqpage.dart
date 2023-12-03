import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/functions/accordion.dart';
import 'package:flutter_uas_testing/utils/colors.dart';


List<Item> getFaqItems() {
  return [
    Item(
      headerText: 'Tentang Central Park Mall',
      expandedText:
          'Central Park Mall adalah sebuah mall yang terletak di Jakarta, Indonesia. Central Park menawarkan berbagai macam toko ritel, pilihan makanan, fasilitas hiburan, dan lainnya, menjadikannya pilihan populer baik bagi penduduk setempat maupun wisatawan.',
    ),
    Item(
      headerText: 'Letak Central Park Mall',
      expandedText:
          'Central Park Mall terletak di bagian barat Jakarta, khususnya di kecamatan Tanjung Duren Selatan. Alamatnya adalah Jl. Letjen S. Parman Kav. 28, Jakarta 11470, Indonesia.',
    ),
    Item(
      headerText: "Cara akses menuju Central Park Mall",
      expandedText:
          "Central Park Mall dapat diakses dengan mudah melalui mobil, transportasi umum, dan bahkan dengan berjalan kaki bagi mereka yang berada di sekitarnya. Mal ini menyediakan ruang parkir yang mencukupi dan terhubung dengan baik melalui berbagai pilihan transportasi.",
    ),
    Item(
      headerText: 'Toko-toko di Central Park Mall',
      expandedText:
          'Central Park Mall memiliki beragam toko, termasuk butik fashion, toko elektronik, salon kecantikan, toko buku, dan lainnya. Merek internasional dan lokal keduanya diwakili, menawarkan pengunjung berbagai pilihan.',
    ),
    Item(
      headerText: "Area main anak di Central Park Mall",
      expandedText:
          "Central Park Mall memiliki area bermain khusus untuk anak-anak di mana mereka dapat bersenang-senang dan berpartisipasi dalam berbagai kegiatan. Central Park Mall adalah destinasi yang ramah keluarga dan cocok untuk semua orang.",
    ),
    Item(
      headerText:
          'Layanan penukaran mata uang di Central Park Mall',
      expandedText:
          "Central Park Mall menyediakan layanan penukaran mata uang untuk kenyamanan pengunjung internasional. Namun, pengunjung disarankan untuk memeriksa kurs dan ketersediaannya terlebih dahulu.",
    ),
  ];
}

class FaqPage extends StatelessWidget {
  const FaqPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 50,
        backgroundColor: primaryColor,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          color: buttonhiglightColor,
        ),
        title: Text(
          'FAQ',
          style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w700,
              color: secondaryColor),
        ),
      ),
      body: SingleChildScrollView(child: Accordion(items: getFaqItems())),
    );
  }
}
