import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../functions/card.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
<<<<<<< Updated upstream
=======
  List items = [
    CardItems(
        imageUrl: 'assets/events/event1.jpg',
        cardName: 'Event1',
        summary:
            'Siapakah itu Gregor Samsa? tentu pria terbaik dan terganteng seluruh dunia, emang ada yang lebih cakep daripada Gregor? ga ada tuh, yg bilang ada jelas jelas bohong dan buktinya ada!! Gregor tuh berumur 35 thn dan dari perusahaan Limbus Company, dia sinner ke 12 dan dibuat based on buku dari Franz Kafka berjudul metamorphosis. Chapter storynya tuh pas Canto I yang nurut ku sih sayang bgt, karena Canto I chapter paling pertama alias chapter tutorial, Gregor backstorynya ga terlalu diexplore. Tau ga sih? Gregor tuh dulunya war vet loh, dia partisipasi dalam Smoke War yang terjadi karena dia dulunya kerja untuk G Corp yang sekarang sudah g ada nah G corp ini lawan ama L corp lama dan krn itu dia dimutasi jadi kecoa biar kuat gitu loh, semua ID Gregor rata rata confident smug and badass tapi cuman base Gregor aja yang ga gitu alasannya tuh karena Gregor merasa self conscious akan bug bugnya :( kasihan kan aww my poor poor Gregor #gregorfanforlife.',
        location: 'Limbus Company'),
    CardItems(
        imageUrl: 'assets/events/event2.jpg',
        cardName: 'Event2',
        summary:
            'Siapakah itu Gregor Samsa? tentu pria terbaik dan terganteng seluruh dunia, emang ada yang lebih cakep daripada Gregor? ga ada tuh, yg bilang ada jelas jelas bohong dan buktinya ada!! Gregor tuh berumur 35 thn dan dari perusahaan Limbus Company, dia sinner ke 12 dan dibuat based on buku dari Franz Kafka berjudul metamorphosis. Chapter storynya tuh pas Canto I yang nurut ku sih sayang bgt, karena Canto I chapter paling pertama alias chapter tutorial, Gregor backstorynya ga terlalu diexplore. Tau ga sih? Gregor tuh dulunya war vet loh, dia partisipasi dalam Smoke War yang terjadi karena dia dulunya kerja untuk G Corp yang sekarang sudah g ada nah G corp ini lawan ama L corp lama dan krn itu dia dimutasi jadi kecoa biar kuat gitu loh, semua ID Gregor rata rata confident smug and badass tapi cuman base Gregor aja yang ga gitu alasannya tuh karena Gregor merasa self conscious akan bug bugnya :( kasihan kan aww my poor poor Gregor #gregorfanforlife.',
        location: 'Limbus Company'),
    CardItems(
        imageUrl: 'assets/events/event3.jpg',
        cardName: 'Event3',
        summary:
            'Siapakah itu Gregor Samsa? tentu pria terbaik dan terganteng seluruh dunia, emang ada yang lebih cakep daripada Gregor? ga ada tuh, yg bilang ada jelas jelas bohong dan buktinya ada!! Gregor tuh berumur 35 thn dan dari perusahaan Limbus Company, dia sinner ke 12 dan dibuat based on buku dari Franz Kafka berjudul metamorphosis. Chapter storynya tuh pas Canto I yang nurut ku sih sayang bgt, karena Canto I chapter paling pertama alias chapter tutorial, Gregor backstorynya ga terlalu diexplore. Tau ga sih? Gregor tuh dulunya war vet loh, dia partisipasi dalam Smoke War yang terjadi karena dia dulunya kerja untuk G Corp yang sekarang sudah g ada nah G corp ini lawan ama L corp lama dan krn itu dia dimutasi jadi kecoa biar kuat gitu loh, semua ID Gregor rata rata confident smug and badass tapi cuman base Gregor aja yang ga gitu alasannya tuh karena Gregor merasa self conscious akan bug bugnya :( kasihan kan aww my poor poor Gregor #gregorfanforlife.',
        location: 'Limbus Company'),
    CardItems(
        imageUrl: 'assets/events/event4.jpg',
        cardName: 'Event4',
        summary:
            'Siapakah itu Gregor Samsa? tentu pria terbaik dan terganteng seluruh dunia, emang ada yang lebih cakep daripada Gregor? ga ada tuh, yg bilang ada jelas jelas bohong dan buktinya ada!! Gregor tuh berumur 35 thn dan dari perusahaan Limbus Company, dia sinner ke 12 dan dibuat based on buku dari Franz Kafka berjudul metamorphosis. Chapter storynya tuh pas Canto I yang nurut ku sih sayang bgt, karena Canto I chapter paling pertama alias chapter tutorial, Gregor backstorynya ga terlalu diexplore. Tau ga sih? Gregor tuh dulunya war vet loh, dia partisipasi dalam Smoke War yang terjadi karena dia dulunya kerja untuk G Corp yang sekarang sudah g ada nah G corp ini lawan ama L corp lama dan krn itu dia dimutasi jadi kecoa biar kuat gitu loh, semua ID Gregor rata rata confident smug and badass tapi cuman base Gregor aja yang ga gitu alasannya tuh karena Gregor merasa self conscious akan bug bugnya :( kasihan kan aww my poor poor Gregor #gregorfanforlife.',
        location: 'Limbus Company'),
  ];
>>>>>>> Stashed changes
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 183, 198, 231),
      appBar: AppBar(
        toolbarHeight: 60.0,
        backgroundColor: const Color.fromARGB(255, 62, 71, 114),
        elevation: 0,
        title: const Text(
          'Events',
          style: TextStyle(
              color: Color.fromARGB(255, 229, 237, 255),
              fontSize: 30.0,
              fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Color.fromARGB(255, 229, 237, 255),
            size: 30.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            card('assets/events/event1.jpg', 'Voucher 1'),
            card('assets/events/event2.jpg', 'Voucher 1'),
            card('assets/events/event3.jpg', 'Voucher 1'),
            card('assets/events/event4.jpg', 'Voucher 1'),
          ],
        ),
      ),
    );
  }
}
