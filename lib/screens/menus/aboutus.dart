import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/functions/accordion.dart';
import 'package:flutter_uas_testing/utils/colors.dart';

List<Item> getAboutUsItems() {
  return [
    Item(
      headerText: 'Tentang Central Park Mall',
      expandedText:
          'Central Park Mall adalah destinasi perbelanjaan dan hiburan terkemuka yang menggabungkan gaya hidup modern dengan kenyamanan yang tak tertandingi. Berlokasi strategis di pusat kota, kami menjadi pilihan utama bagi mereka yang mencari pengalaman berbelanja yang eksklusif dan beragam.',
    ),
    Item(
      headerText: 'Visi dan Misi Kami',
      expandedText:
          'Visi kami adalah menciptakan ruang yang unik, di mana keindahan arsitektur modern bertemu dengan keberagaman penawaran produk dan hiburan yang tak terbatas. Kami berkomitmen untuk memberikan pengalaman belanja yang memuaskan dan menyenangkan bagi setiap pengunjung. Misi kami adalah menjadi pusat gaya hidup terdepan yang menyediakan berbagai layanan dan produk berkualitas tinggi. Kami berusaha untuk memberikan nilai tambah bagi komunitas kami dengan mendukung pertumbuhan ekonomi lokal dan memberdayakan pelanggan serta mitra bisnis kami.',
    ),
    Item(
      headerText: "Fasilitas dan Layanan",
      expandedText:
          "Central Park Mall menawarkan lebih dari sekadar tempat berbelanja. Dengan ruang parkir yang luas, akses mudah melalui transportasi umum, dan area bermain anak-anak yang didedikasikan, kami merancang pengalaman yang nyaman dan ramah keluarga. Di dalam mall, Anda akan menemukan beragam toko, mulai dari butik fashion, toko elektronik, salon kecantikan, hingga toko buku, semuanya menawarkan pilihan produk dari merek internasional dan lokal. Untuk kenyamanan pengunjung internasional, kami juga menyediakan layanan penukaran mata uang dengan kurs yang bersaing.",
    ),
    Item(
      headerText: 'Berita dan Acara',
      expandedText:
          'Jangan lewatkan berbagai acara dan promosi menarik yang kami adakan secara berkala. Dari pameran seni hingga pertunjukan live, Central Park Mall selalu berusaha memberikan hiburan yang segar dan menghibur.',
    ),
    Item(
      headerText: "Hubungi Kami",
      expandedText:
          "Apakah Anda memiliki pertanyaan atau masukan? Tim kami siap membantu. Kunjungi pusat informasi kami di dalam mall atau hubungi kami melalui website resmi kami. Terima kasih telah memilih Central Park Mall sebagai destinasi belanja dan hiburan Anda. Kami berharap dapat memberikan pengalaman yang tak terlupakan setiap kali Anda berkunjung.",
    ),
  ];
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
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          color: buttonhiglightColor,
        ),
        title: Text(
          'AboutUs',
          style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w700,
              color: secondaryColor),
        ),
      ),
      body: SingleChildScrollView(child: Accordion(items: getAboutUsItems())),
    );
  }
}