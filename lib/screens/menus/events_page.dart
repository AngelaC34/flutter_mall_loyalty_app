import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/screens/popups/popupevents.dart';
import 'package:flutter_uas_testing/utils/colors.dart';
import '../../functions/card.dart';
import 'package:get/get.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  List items = [
    CardItems(
        imageUrl: 'assets/events/event1.jpg',
        cardName: 'Noel Season',
        summary:
            'Sambut Noel Season di Central Park, berlangsung mulai 26 Nov hingga 14 Jan 2024! Nikmati dekorasi gemerlap, pertunjukan musik, dan penampilan Santa Claus. Ada arena salju, kegiatan kerajinan anak-anak, dan pasar malam khusus Noel dengan makanan lezat. Rayakan semangat liburan dengan kebahagiaan dan pesona di setiap sudut taman!',
        location: 'Central Park',
        dateFrom: '26-Nov-23',
        dateTo: '14-Jan-24',
        getDisc: '',),
    CardItems(
        imageUrl: 'assets/events/event2.jpg',
        cardName: 'Fit Food & Fun',
        summary:
            'Nikmati kehidupan sehat dan lezat di "Fit, Food, and Fun" di Central Park, berlangsung 12 Oktober hingga 12 November 2023! Ikuti kelas kebugaran, cicipi hidangan sehat, dan hadiri workshop kesehatan. Jelajahi stan makanan, saksikan pertunjukan seni, dan hadapi kontes seru. Temukan kebahagiaan dalam kebugaran dan kelezatan di setiap sudut acara ini!',
        location: 'Central Park',
        dateFrom: '12-Oct-23',
        dateTo: '12-Nov-23',
        getDisc: '',),
    CardItems(
        imageUrl: 'assets/events/event3.jpg',
        cardName: 'Dog Does Disco Festival',
        summary:
            'Rayakan "Dog Does Disco Festival" di Central Park mulai tanggal 29 September 2023 - 01 October 2023! Saksikan panggung musik, lomba lucu untuk anjing, dan pameran keahlian unik. Saksikan gemerlapnya lampu dan getar musik saat anjing-anjing menyatu dalam atmosfer festival yang menghibur. Mari bergabung dalam kelincahan dan kebahagiaan di tengah riuhnya "Dog Does Disco Festival"!',
        location: 'Tribeca Park',
        dateFrom: '29-Sep-23',
        dateTo: '23-Oct-23',
        getDisc: '',),
    CardItems(
        imageUrl: 'assets/events/event4.jpg',
        cardName: 'Smileyworld: Lost In a Metaverse',
        summary:
            'Rasakan petualangan seru di dunia metaverse! Anda dapat berinteraksi dengan instalasi interaktif, menyaksikan pertunjukan seni digital, dan aktivitas lainnya yang menyenangkan. Temukan pesona dan keajaiban dunia metaverse yang penuh senyuman di tengah Central Park. Bergabunglah dengan kami dalam minggu petualangan digital yang tak terlupakan!',
        location: 'Tribeca Park',
        dateFrom: '10-Sep-23',
        dateTo: '17-Sep-23',
        getDisc: '',),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60.0,
        backgroundColor: primaryColor,
        elevation: 0,
        title: Text(
          'Events',
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
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => Get.to(
              () => PopUpEvents(cardItems: items[index]),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width * 1.0,
              height: MediaQuery.of(context).size.height * 0.45,
              padding: const EdgeInsets.all(5.0),
              child: CardBox(cardItems: items[index]),
            ),
          );
        },
      ),
    );
  }
}