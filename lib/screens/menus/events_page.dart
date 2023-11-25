import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../functions/card.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
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
            card('https://pbs.twimg.com/media/FBcJmQAXMAYXox0.jpg', 'Event 1'),
            card('https://pbs.twimg.com/media/FBcJmQAXMAYXox0.jpg', 'Event 1'),
            card('https://pbs.twimg.com/media/FBcJmQAXMAYXox0.jpg', 'Event 1'),
            card('https://pbs.twimg.com/media/FBcJmQAXMAYXox0.jpg', 'Event 1'),
            card('https://pbs.twimg.com/media/FBcJmQAXMAYXox0.jpg', 'Event 1')
          ],
        ),
      ),
    );
  }
}
