import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imgPromos = [
    'https://i1.sndcdn.com/artworks-2ZO7JHqY9ELkyr5m-nKH8Bg-t500x500.jpg',
    'https://pbs.twimg.com/profile_images/1654751936682532866/jr-Wynpc_400x400.jpg',
    'https://pbs.twimg.com/media/FBcJmQAXMAYXox0.jpg',
    'https://64.media.tumblr.com/24f5b93faae1efb74c0d099a051b647c/c18164bba9cbf0e1-49/s540x810/69748671faa9e79ce9dfa90b3c6693bd12cddb6d.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
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
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 20.0, top: 30.0),
                  child: const Text(
                    'Promos',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  child: CarouselSlider(
                    items: imgPromos.map((url) {
                      return Container(
                        margin: EdgeInsets.all(5.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          child: Image.network(
                            url,
                            fit: BoxFit.cover,
                            width: 1000.0,
                          ),
                        ),
                      );
                    }).toList(),
                    options: CarouselOptions(
                      height: 200.0,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 5),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        //smth here when slider changes maybe
                      },
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 20.0, top: 30.0),
                  child: const Text(
                    'Vouchers',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  child: CarouselSlider(
                    items: imgPromos.map((url) {
                      return Container(
                        margin: EdgeInsets.all(5.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          child: Image.network(
                            url,
                            fit: BoxFit.cover,
                            width: 1000.0,
                          ),
                        ),
                      );
                    }).toList(),
                    options: CarouselOptions(
                      height: 200.0,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 5),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        //smth here when slider changes maybe
                      },
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
