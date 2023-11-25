import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screens/menus/discovery_page.dart';

Widget cardVertical(String img, String title) {
  return Container(
    padding: EdgeInsets.only(top: 30.0),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.network(
            img,
            height: 200.0,
            width: 200.0,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.all(2.0),
          alignment: Alignment.center,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 229, 237, 255),
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: TextButton(
            child: Text(
              'More Info',
              style: TextStyle(
                  color: Color.fromARGB(255, 229, 237, 255), fontSize: 10.0),
            ),
            onPressed: () => Get.to(
              () => const DiscoveryPage(),
            ),
          ),
        )
      ],
    ),
  );
}
