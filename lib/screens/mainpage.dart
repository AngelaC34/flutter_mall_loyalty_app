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
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  left: 10.0,
                ),
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
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15.0,
                    ),
                    child: Text(
                      'Username',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    'Points: 100',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: screenWidth * 0.45,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 3.0,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.messenger_outline_rounded),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 3.0),
            child: const Text(
              'Loyalty Progress',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Positioned(
            top: screenWidth * 0.3,
            child: Padding(
              padding: EdgeInsets.all(screenWidth * 0.03),
              child: LinearPercentIndicator(
                width: screenWidth - (screenWidth * 0.1),
                lineHeight: screenWidth * 0.04,
                percent: progress,
                center: Text(
                  "${(progress * 100).toStringAsFixed(1)}%",
                  style: const TextStyle(fontSize: 16.0),
                ),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: const Color(0xff717CE2),
              ),
            ),
          ),
          Positioned(
            top: screenWidth * 0.3,
            left: screenWidth * 0.02,
            child: Padding(
              padding: EdgeInsets.all(screenWidth * 0.01),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.01),
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
                      borderRadius: BorderRadius.circular(screenWidth * 0.1),
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
