import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  double progress = 0.20; // Initial progress value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 20.0,
            left: 20.0,
            child: SizedBox(
              width: 60.0,
              height: 60.0,
              child: ClipOval(
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMvnSkMMK0pynoPPXLXDthaZM-mYAHlzH2szYgDyU&s',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const Positioned(
            top: 30.0,
            left: 100.0,
            child: Text(
              'Username',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Positioned(
            top: 52.0,
            left: 100.0,
            child: Text(
              'Points: 100',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Positioned(
            top: 30.0,
            left: 400.0,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications),
            ),
          ),
          Positioned(
            top: 30.0,
            left: 450.0,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.messenger_outline_rounded),
            ),
          ),
          const Positioned(
            top: 100.0,
            left: 30.0,
            child: Text(
              'Loyalty Progress',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Positioned(
            top: 135.0,
            left: 20.0,
            child: LinearPercentIndicator(
              width: MediaQuery.of(context).size.width - 50,
              lineHeight: 20.0,
              percent: progress,
              center: Text(
                "${(progress * 100).toStringAsFixed(1)}%",
                style: const TextStyle(fontSize: 16.0),
              ),
              progressColor: const Color(0xff717CE2),
              backgroundColor: const Color(0xffF1F6FF),
              linearStrokeCap: LinearStrokeCap.roundAll,
            ),
          ),
          Positioned(
            top: 150.0,
            left: 20.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () => _searchController.clear(),
                    ),
                    prefixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        // Perform the search here
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
