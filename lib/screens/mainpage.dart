import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../functions/bottomnavbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController search = TextEditingController();
  double percent = 80.0;
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
          Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20.0, left: 40.0),
                    child: ClipOval(
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMvnSkMMK0pynoPPXLXDthaZM-mYAHlzH2szYgDyU&s',
                        fit: BoxFit.cover,
                        height: 70.0,
                        width: 70.0,
                      ),
                    ),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20.0,
                          top: 20.0,
                        ),
                        child: Text(
                          'Username',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 229, 237, 255),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20.0,
                          top: 2.0,
                        ),
                        child: Text(
                          'Points Amount: ',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w100,
                            color: Color.fromARGB(255, 229, 237, 255),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                  ),
                  Container(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_horiz_sharp,
                        color: Color.fromARGB(255, 229, 237, 255),
                      ),
                    ),
                  ),
                  Container(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_none,
                        color: Color.fromARGB(255, 229, 237, 255),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                width: MediaQuery.of(context).size.width - 60,
                height: 200.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 229, 237, 255),
                    width: 2.0, // Adjust the width as needed
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Loyalty Goals',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 229, 237, 255)),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Bronze',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 229, 237, 255),
                          ),
                        ),
                        SizedBox(
                          width: 80.0,
                        ),
                        Text(
                          'Silver',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 229, 237, 255),
                          ),
                        ),
                        SizedBox(
                          width: 80.0,
                        ),
                        Text(
                          'Gold',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 229, 237, 255),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 30.0,
                      width: MediaQuery.of(context).size.width - 30,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(
                        top: 10.0,
                        bottom: 10.0,
                      ),
                      child: LinearPercentIndicator(
                        lineHeight: percent,
                        percent: 0.8,
                        barRadius: const Radius.circular(10.0),
                        backgroundColor: Color.fromARGB(255, 229, 237, 255),
                        progressColor: Color.fromARGB(
                            255, 183, 198, 231), //ganti jdi yg lbh bagus kali
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 50,
                height: 50.0,
                alignment: Alignment.center,
                child: buildTextField('Search...', Icons.search_outlined),
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
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 20.0, top: 30.0),
                child: const Text(
                  'Events',
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
        ],
      ),
    );
  }

  Widget buildTextField(String hintText, IconData prefixIcon) {
    return TextField(
      style: TextStyle(
        color: Color.fromARGB(255, 62, 71, 114).withOpacity(0.8),
      ),
      controller: search,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color.fromARGB(255, 229, 237, 255),
        contentPadding: EdgeInsets.only(bottom: 5.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 16.0,
          color: Color.fromARGB(255, 62, 71, 114).withOpacity(0.8),
        ),
        prefixIcon: Icon(
          prefixIcon,
          size: 20.0,
        ),
        prefixIconColor: Color.fromARGB(255, 62, 71, 114).withOpacity(0.8),
      ),
    );
  }
}
