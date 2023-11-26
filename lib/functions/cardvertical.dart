import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screens/menus/discovery_page.dart';

Widget cardVertical(String img, String title) {
  return Container(
    margin: EdgeInsets.all(15.0),
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 229, 237, 255),
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: const [
        BoxShadow(
          color: Colors.black,
          blurRadius: 5.0,
          spreadRadius: 0.0,
          offset: Offset(2.0, 2.0),
        ),
      ],
    ),
    child: Column(
      children: [
        SizedBox(
          height: 8.0,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: InkWell(
            onTap: () => Get.to(
              () => const DiscoveryPage(),
            ),
            child: Image.asset(
              img,
              fit: BoxFit.cover,
              height: 150.0,
              width: 180.0,
            ),
          ),
          // child: IconButton(
          //   icon: Image.asset(
          //     img,
          //     fit: BoxFit.cover,
          //   ),
          //   iconSize: 150.0,
          //   onPressed: () => Get.to(
          //     () => const DiscoveryPage(),
          //   ),
          // ),
          // child: Image.network(
          //   img,
          //   height: 200.0,
          //   width: 200.0,
          //   fit: BoxFit.cover,
          // ),
        ),
        Container(
          padding: EdgeInsets.all(1.0),
          alignment: Alignment.center,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 62, 71, 114),
            ),
          ),
        ),
        // ClipRRect(
        //   borderRadius: BorderRadius.circular(10.0),
        //   child: TextButton(
        //     child: Text(
        //       'More Info',
        //       style: TextStyle(
        //           color: Color.fromARGB(255, 229, 237, 255), fontSize: 10.0),
        //     ),
        //     onPressed: () => Get.to(
        //       () => const DiscoveryPage(),
        //     ),
        //   ),
        // )
      ],
    ),
  );
}
