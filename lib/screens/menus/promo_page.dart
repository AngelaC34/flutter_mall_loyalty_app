import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';
import 'package:get/get.dart';
import '../../functions/card.dart';

class PromoPage extends StatefulWidget {
  const PromoPage({super.key});

  @override
  State<PromoPage> createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {
  List items = [
    CardItems(
        imageUrl: 'assets/promos/promo1.jpg',
        cardName: 'Promo 1',
        summary:
            'Siapakah itu Gregor Samsa? tentu pria terbaik dan terganteng seluruh dunia, emang ada yang lebih cakep daripada Gregor? ga ada tuh, yg bilang ada jelas jelas bohong dan buktinya ada!! Gregor tuh berumur 35 thn dan dari perusahaan Limbus Company, dia sinner ke 12 dan dibuat based on buku dari Franz Kafka berjudul metamorphosis. Chapter storynya tuh pas Canto I yang nurut ku sih sayang bgt, karena Canto I chapter paling pertama alias chapter tutorial, Gregor backstorynya ga terlalu diexplore. Tau ga sih? Gregor tuh dulunya war vet loh, dia partisipasi dalam Smoke War yang terjadi karena dia dulunya kerja untuk G Corp yang sekarang sudah g ada nah G corp ini lawan ama L corp lama dan krn itu dia dimutasi jadi kecoa biar kuat gitu loh, semua ID Gregor rata rata confident smug and badass tapi cuman base Gregor aja yang ga gitu alasannya tuh karena Gregor merasa self conscious akan bug bugnya :( kasihan kan aww my poor poor Gregor #gregorfanforlife.',
        location: 'Limbus Company',
        cardTime: '09.30 - 11.00',
        cardDate: '12-12-12'),
    CardItems(
        imageUrl: 'assets/promos/promo2.jpg',
        cardName: 'Promo 2',
        summary:
            'Siapakah itu Gregor Samsa? tentu pria terbaik dan terganteng seluruh dunia, emang ada yang lebih cakep daripada Gregor? ga ada tuh, yg bilang ada jelas jelas bohong dan buktinya ada!! Gregor tuh berumur 35 thn dan dari perusahaan Limbus Company, dia sinner ke 12 dan dibuat based on buku dari Franz Kafka berjudul metamorphosis. Chapter storynya tuh pas Canto I yang nurut ku sih sayang bgt, karena Canto I chapter paling pertama alias chapter tutorial, Gregor backstorynya ga terlalu diexplore. Tau ga sih? Gregor tuh dulunya war vet loh, dia partisipasi dalam Smoke War yang terjadi karena dia dulunya kerja untuk G Corp yang sekarang sudah g ada nah G corp ini lawan ama L corp lama dan krn itu dia dimutasi jadi kecoa biar kuat gitu loh, semua ID Gregor rata rata confident smug and badass tapi cuman base Gregor aja yang ga gitu alasannya tuh karena Gregor merasa self conscious akan bug bugnya :( kasihan kan aww my poor poor Gregor #gregorfanforlife.',
        location: 'Limbus Company',
        cardTime: '09.30 - 11.00',
        cardDate: '12-12-12'),
    CardItems(
        imageUrl: 'assets/promos/promo3.jpg',
        cardName: 'Promo 3',
        summary:
            'Siapakah itu Gregor Samsa? tentu pria terbaik dan terganteng seluruh dunia, emang ada yang lebih cakep daripada Gregor? ga ada tuh, yg bilang ada jelas jelas bohong dan buktinya ada!! Gregor tuh berumur 35 thn dan dari perusahaan Limbus Company, dia sinner ke 12 dan dibuat based on buku dari Franz Kafka berjudul metamorphosis. Chapter storynya tuh pas Canto I yang nurut ku sih sayang bgt, karena Canto I chapter paling pertama alias chapter tutorial, Gregor backstorynya ga terlalu diexplore. Tau ga sih? Gregor tuh dulunya war vet loh, dia partisipasi dalam Smoke War yang terjadi karena dia dulunya kerja untuk G Corp yang sekarang sudah g ada nah G corp ini lawan ama L corp lama dan krn itu dia dimutasi jadi kecoa biar kuat gitu loh, semua ID Gregor rata rata confident smug and badass tapi cuman base Gregor aja yang ga gitu alasannya tuh karena Gregor merasa self conscious akan bug bugnya :( kasihan kan aww my poor poor Gregor #gregorfanforlife.',
        location: 'Limbus Company',
        cardTime: '09.30 - 11.00',
        cardDate: '12-12-12'),
    CardItems(
        imageUrl: 'assets/promos/promo4.jpg',
        cardName: 'Promo 4',
        summary:
            'Siapakah itu Gregor Samsa? tentu pria terbaik dan terganteng seluruh dunia, emang ada yang lebih cakep daripada Gregor? ga ada tuh, yg bilang ada jelas jelas bohong dan buktinya ada!! Gregor tuh berumur 35 thn dan dari perusahaan Limbus Company, dia sinner ke 12 dan dibuat based on buku dari Franz Kafka berjudul metamorphosis. Chapter storynya tuh pas Canto I yang nurut ku sih sayang bgt, karena Canto I chapter paling pertama alias chapter tutorial, Gregor backstorynya ga terlalu diexplore. Tau ga sih? Gregor tuh dulunya war vet loh, dia partisipasi dalam Smoke War yang terjadi karena dia dulunya kerja untuk G Corp yang sekarang sudah g ada nah G corp ini lawan ama L corp lama dan krn itu dia dimutasi jadi kecoa biar kuat gitu loh, semua ID Gregor rata rata confident smug and badass tapi cuman base Gregor aja yang ga gitu alasannya tuh karena Gregor merasa self conscious akan bug bugnya :( kasihan kan aww my poor poor Gregor #gregorfanforlife.',
        location: 'Limbus Company',
        cardTime: '09.30 - 11.00',
        cardDate: '12-12-12'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.0,
        backgroundColor: primaryColor,
        elevation: 0,
        title: Text(
          'Promos',
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
      body: SafeArea(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.height * 0.5,
              child: CardBox(cardItems: items[index]),
            );
          },
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class PromoPage extends StatefulWidget {
//   const PromoPage({Key? key}) : super(key: key);

//   @override
//   State<PromoPage> createState() => _PromoPageState();
// }

// class _PromoPageState extends State<PromoPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       appBar: AppBar(),
//       body: Column(
//         children: [
//           // Promo banner
//           Container(
//             child: Row(
//               children: [
//                 Text('Get 10% off for your first purchase!'),

//                 // Redeem button
//                 MyButton(
//                   text: "Redeem",
//                   onTap: () {
//                     // Add your redeem logic here
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MyButton extends StatelessWidget {
//   final String text;
//   final VoidCallback onTap;

//   const MyButton({required this.text, required this.onTap});

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: onTap,
//       child: Text(text),
//     );
//   }
// }
