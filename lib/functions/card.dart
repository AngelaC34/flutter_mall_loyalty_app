import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screens/menus/promo_page.dart';

Widget card(String img, String title) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Color.fromARGB(255, 229, 237, 255),
    ),
    padding: EdgeInsets.all(20.0),
    margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: InkWell(
            onTap: () => Get.to(
              () => const PromoPage(),
            ),
            child: Image.asset(
              img,
              height: 200.0,
              width: 400.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
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
        //     child: Text('More Info'),
        //     onPressed: () => Get.to(
        //       () => const PromoPage(),
        //     ),
        //   ),
        // )
      ],
    ),
  );
}
