import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:get/get.dart';
import 'menus/promo_page.dart';
import '../functions/searchbar.dart';
import '../functions/carousel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 20.0, left: 40.0),
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
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_horiz_sharp,
                    color: Color.fromARGB(255, 229, 237, 255),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_none,
                    color: Color.fromARGB(255, 229, 237, 255),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              width: MediaQuery.of(context).size.width - 60,
              height: 200.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 229, 237, 255),
                  width: 2.0, // Adjust the width as needed
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    'Loyalty Goals',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 229, 237, 255)),
                  ),
                  const SizedBox(
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
                    margin: const EdgeInsets.only(
                      top: 10.0,
                      bottom: 10.0,
                    ),
                    child: LinearPercentIndicator(
                      lineHeight: percent,
                      percent: 0.8,
                      barRadius: const Radius.circular(10.0),
                      backgroundColor: const Color.fromARGB(255, 229, 237, 255),
                      progressColor: const Color.fromARGB(
                          255, 183, 198, 231), //ganti jdi yg lbh bagus kali
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 50,
              height: 50.0,
              alignment: Alignment.center,
              child: buildTextField('Search...', Icons.search_outlined),
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(left: 20.0, top: 30.0),
                  child: const Text(
                    'Promos',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromARGB(255, 229, 237, 255),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  margin: const EdgeInsets.only(left: 350.0, top: 30.0),
                  child: IconButton(
                    onPressed: () => Get.to(() => const PromoPage()),
                    icon: const Icon(
                      Icons.more_vert_rounded,
                      color: Color.fromARGB(255, 229, 237, 255),
                    ),
                  ),
                )
              ],
            ),
            carouselMake(imgPromos),
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(left: 20.0, top: 30.0),
                  child: const Text(
                    'Vouchers',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromARGB(255, 229, 237, 255),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  margin: const EdgeInsets.only(left: 350.0, top: 30.0),
                  child: IconButton(
                    onPressed: () => Get.to(() => const PromoPage()),
                    icon: const Icon(
                      Icons.more_vert_rounded,
                      color: Color.fromARGB(255, 229, 237, 255),
                    ),
                  ),
                )
              ],
            ),
            carouselMake(imgPromos),
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(left: 20.0, top: 30.0),
                  child: const Text(
                    'Events',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromARGB(255, 229, 237, 255),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  margin: const EdgeInsets.only(left: 350.0, top: 30.0),
                  child: IconButton(
                    onPressed: () => Get.to(() => const PromoPage()),
                    icon: const Icon(
                      Icons.more_vert_rounded,
                      color: Color.fromARGB(255, 229, 237, 255),
                    ),
                  ),
                )
              ],
            ),
            carouselMake(imgPromos),
          ],
        ),
      ),
    );
  }
}
