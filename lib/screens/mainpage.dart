// import 'package:flutter/material.dart';
// import 'package:percent_indicator/percent_indicator.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final TextEditingController _searchController = TextEditingController();
//   double progress = 0.20; // Initial progress value

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;

//     return Scaffold(
//       body: Column(
//         children: [
//           Row(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(
//                   top: 10.0,
//                   left: 10.0,
//                 ),
//                 child: SizedBox(
//                   width: 60.0,
//                   height: 60.0,
//                   child: ClipOval(
//                     child: Image.network(
//                       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMvnSkMMK0pynoPPXLXDthaZM-mYAHlzH2szYgDyU&s',
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ),
//               Column(
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(
//                       top: 10.0,
//                       left: 15.0,
//                     ),
//                     child: Text(
//                       'Username',
//                       style: TextStyle(
//                         fontSize: 20.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   Text(
//                     'Points: 100',
//                     style: TextStyle(
//                       fontSize: 15.0,
//                       fontWeight: FontWeight.normal,
//                     ),
//                   ),
//                 ],
//               ),
//               Padding(
//                 padding: EdgeInsets.only(
//                   left: screenWidth * 0.45,
//                 ),
//                 child: IconButton(
//                   onPressed: () {},
//                   icon: const Icon(Icons.notifications),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(
//                   left: 3.0,
//                 ),
//                 child: IconButton(
//                   onPressed: () {},
//                   icon: const Icon(Icons.messenger_outline_rounded),
//                 ),
//               ),
//             ],
//           ),
//           const Row(
//             children: [
//               Padding(
//                 padding: EdgeInsets.only(
//                   top: 10.0,
//                   left: 10.0,
//                 ),
//                 child: Text(
//                   'Loyalty Progress',
//                   style: TextStyle(
//                     fontSize: 20.0,
//                     fontWeight: FontWeight.normal,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.only(
//               top: 10.0,
//               left: 1.0,
//               bottom: 10.0,
//             ),
//             child: Container(
//               child: LinearPercentIndicator(
//                 width: screenWidth - (screenWidth * 0.01),
//                 lineHeight: screenWidth * 0.04,
//                 percent: progress,
//                 center: Text(
//                   "${(progress * 100).toStringAsFixed(1)}%",
//                   style: const TextStyle(fontSize: 16.0),
//                 ),
//                 linearStrokeCap: LinearStrokeCap.roundAll,
//                 progressColor: const Color(0xff717CE2),
//               ),
//             ),
//           ),
//           Positioned(
//             top: screenWidth * 0.1,
//             left: screenWidth * 0.02,
//             child: Padding(
//               padding: EdgeInsets.all(screenWidth * 0.01),
//               child: Container(
//                 padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.01),
//                 height: 30.0,
//                 child: TextField(
//                   controller: _searchController,
//                   decoration: InputDecoration(
//                     hintText: 'Search...',
//                     suffixIcon: IconButton(
//                       icon: Icon(Icons.clear),
//                       onPressed: () => _searchController.clear(),
//                     ),
//                     prefixIcon: IconButton(
//                       icon: Icon(Icons.search),
//                       onPressed: () {
//                         // Perform the search here
//                       },
//                     ),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(screenWidth * 0.1),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10.0, left: 20.0),
                  child: ClipOval(
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMvnSkMMK0pynoPPXLXDthaZM-mYAHlzH2szYgDyU&s',
                      fit: BoxFit.cover,
                      height: 60.0,
                      width: 60.0,
                    ),
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 30.0,
                        top: 10.0,
                      ),
                      child: Text(
                        'Username',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 30.0,
                        top: 2.0,
                      ),
                      child: Text(
                        'Points Amount: ',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w100,
                          color: Color(0xff717CE2),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                ),
                Container(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.messenger_outline_rounded,
                      color: Color(0xff717CE2),
                    ),
                  ),
                ),
                Container(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications_none,
                      color: Color(0xff717CE2),
                    ),
                  ),
                )
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width - 30,
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                top: 10.0,
                bottom: 10.0,
              ),
              child: LinearPercentIndicator(
                lineHeight: 20.0,
                percent: 0.8,
                center: Text("80.0%"),
                barRadius: const Radius.circular(10.0),
                progressColor: Color(0xff717CE2),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10.0,
                bottom: 10.0,
              ),
              width: MediaQuery.of(context).size.width - 50,
              height: 20.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Color(0xff717CE2)),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search...',
                  hintStyle: TextStyle(
                    fontSize: 15.0,
                    color: Color(0xff717CE2).withOpacity(0.5),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 15.0,
                  ),
                ),
              ),
            ),
            Container(
              child: CarouselSlider(
                items: [
                  Container(
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        'Slide 1',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.green,
                    child: Center(
                      child: Text(
                        'Slide 2',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        'Slide 3',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                  ),
                ],
                options: CarouselOptions(
                  height: 200.0,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 2),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    //smth here when slider changes maybe
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
