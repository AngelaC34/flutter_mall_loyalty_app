import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';

class AboutUsItem {
  AboutUsItem({
    required this.headerText,
    required this.expandedText,
    this.isExpanded = false,
  });
  String headerText;
  String expandedText;
  bool isExpanded;
}

List<AboutUsItem> getAboutUsItems() {
  return [
    AboutUsItem(
      headerText: 'Tentang Central Park Mall',
      expandedText:
          'Central Park Mall adalah destinasi perbelanjaan dan hiburan terkemuka yang menggabungkan gaya hidup modern dengan kenyamanan yang tak tertandingi. Berlokasi strategis di pusat kota, kami menjadi pilihan utama bagi mereka yang mencari pengalaman berbelanja yang eksklusif dan beragam.',
    ),
    AboutUsItem(
      headerText: 'Visi dan Misi Kami',
      expandedText:
          'Visi kami adalah menciptakan ruang yang unik, di mana keindahan arsitektur modern bertemu dengan keberagaman penawaran produk dan hiburan yang tak terbatas. Kami berkomitmen untuk memberikan pengalaman belanja yang memuaskan dan menyenangkan bagi setiap pengunjung. Misi kami adalah menjadi pusat gaya hidup terdepan yang menyediakan berbagai layanan dan produk berkualitas tinggi. Kami berusaha untuk memberikan nilai tambah bagi komunitas kami dengan mendukung pertumbuhan ekonomi lokal dan memberdayakan pelanggan serta mitra bisnis kami.',
    ),
    AboutUsItem(
      headerText: "Fasilitas dan Layanan",
      expandedText:
          "Central Park Mall menawarkan lebih dari sekadar tempat berbelanja. Dengan ruang parkir yang luas, akses mudah melalui transportasi umum, dan area bermain anak-anak yang didedikasikan, kami merancang pengalaman yang nyaman dan ramah keluarga. Di dalam mall, Anda akan menemukan beragam toko, mulai dari butik fashion, toko elektronik, salon kecantikan, hingga toko buku, semuanya menawarkan pilihan produk dari merek internasional dan lokal. Untuk kenyamanan pengunjung internasional, kami juga menyediakan layanan penukaran mata uang dengan kurs yang bersaing.",
    ),
    AboutUsItem(
      headerText: 'Berita dan Acara',
      expandedText:
          'Jangan lewatkan berbagai acara dan promosi menarik yang kami adakan secara berkala. Dari pameran seni hingga pertunjukan live, Central Park Mall selalu berusaha memberikan hiburan yang segar dan menghibur.',
    ),
    AboutUsItem(
      headerText: "Hubungi Kami",
      expandedText:
          "Apakah Anda memiliki pertanyaan atau masukan? Tim kami siap membantu. Kunjungi pusat informasi kami di dalam mall atau hubungi kami melalui website resmi kami. Terima kasih telah memilih Central Park Mall sebagai destinasi belanja dan hiburan Anda. Kami berharap dapat memberikan pengalaman yang tak terlupakan setiap kali Anda berkunjung.",
    ),
  ];
}

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);
  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  final List<AboutUsItem> items = getAboutUsItems();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _AboutUsrender(),
      ),
    );
  }

  Widget _AboutUsrender() {
    return ExpansionPanelList(
      elevation: 0,
      dividerColor: borderColor,
      expandIconColor: buttonhiglightColor,
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          items[index].isExpanded = isExpanded;
        });
      },
      children: items.map<ExpansionPanel>((AboutUsItem item) {
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

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

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
          'About Us',
          style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w700,
              color: secondaryColor),
        ),
      ),
      body: SingleChildScrollView(child: AboutUs()),
    );
  }
}
