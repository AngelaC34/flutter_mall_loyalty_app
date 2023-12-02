import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';

class FaQItem {
  FaQItem({
    required this.headerText,
    required this.expandedText,
    this.isExpanded = false,
  });
  String headerText;
  String expandedText;
  bool isExpanded;
}

List<FaQItem> getFaqItems() {
  return [
    FaQItem(
      headerText: 'Tentang Central Park Mall',
      expandedText:
          'Central Park Mall adalah sebuah mall yang terletak di Jakarta, Indonesia. Central Park menawarkan berbagai macam toko ritel, pilihan makanan, fasilitas hiburan, dan lainnya, menjadikannya pilihan populer baik bagi penduduk setempat maupun wisatawan.',
    ),
    FaQItem(
      headerText: 'Letak Central Park Mall',
      expandedText:
          'Central Park Mall terletak di bagian barat Jakarta, khususnya di kecamatan Tanjung Duren Selatan. Alamatnya adalah Jl. Letjen S. Parman Kav. 28, Jakarta 11470, Indonesia.',
    ),
    FaQItem(
      headerText: "Cara akses menuju Central Park Mall",
      expandedText:
          "Central Park Mall dapat diakses dengan mudah melalui mobil, transportasi umum, dan bahkan dengan berjalan kaki bagi mereka yang berada di sekitarnya. Mal ini menyediakan ruang parkir yang mencukupi dan terhubung dengan baik melalui berbagai pilihan transportasi.",
    ),
    FaQItem(
      headerText: 'Toko-toko di Central Park Mall',
      expandedText:
          'Central Park Mall memiliki beragam toko, termasuk butik fashion, toko elektronik, salon kecantikan, toko buku, dan lainnya. Merek internasional dan lokal keduanya diwakili, menawarkan pengunjung berbagai pilihan.',
    ),
    FaQItem(
      headerText: "Area main anak di Central Park Mall",
      expandedText:
          "Central Park Mall memiliki area bermain khusus untuk anak-anak di mana mereka dapat bersenang-senang dan berpartisipasi dalam berbagai kegiatan. Central Park Mall adalah destinasi yang ramah keluarga dan cocok untuk semua orang.",
    ),
    FaQItem(
      headerText:
          'Layanan penukaran mata uang di Central Park Mall',
      expandedText:
          "Central Park Mall menyediakan layanan penukaran mata uang untuk kenyamanan pengunjung internasional. Namun, pengunjung disarankan untuk memeriksa kurs dan ketersediaannya terlebih dahulu.",
    ),
  ];
}

class FaQ extends StatefulWidget {
  const FaQ({Key? key}) : super(key: key);
  @override
  State<FaQ> createState() => _FaQState();
}

class _FaQState extends State<FaQ> {
  final List<FaQItem> items = getFaqItems();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _faqrender(),
      ),
    );
  }

  Widget _faqrender() {
    return ExpansionPanelList(
      elevation: 0,
      dividerColor: borderColor,
      expandIconColor: buttonhiglightColor,
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          items[index].isExpanded = isExpanded;
        });
      },
      children: items.map<ExpansionPanel>((FaQItem item) {
        return ExpansionPanel(
          backgroundColor: primaryColor,
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              iconColor: buttonhiglightColor,
              tileColor: primaryColor,
              splashColor: primaryColor,
              title: Text(
                item.headerText,
                style: TextStyle(
                    color: secondaryColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600),
              ),
            );
          },
          body: ListTile(
            iconColor: buttonhiglightColor,
            tileColor: primaryColor,
            splashColor: primaryColor,
            title: Text(
              item.expandedText,
              style: TextStyle(
                  color: texthighlightColor,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400),
            ),
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
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
          icon: Icon(Icons.arrow_back_ios_new_rounded),
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
      body: SingleChildScrollView(child: FaQ()),
    );
  }
}
