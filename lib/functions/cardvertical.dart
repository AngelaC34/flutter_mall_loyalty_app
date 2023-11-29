import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';
import 'package:get/get.dart';
import '../functions/gridmaker.dart';
import '../screens/popups/popupdiscovery.dart';

class cardVertical extends StatelessWidget {
  const cardVertical({super.key, required this.gridItems});
  final GridItems gridItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
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
                () => PopUpDiscovery(
                  gridItems: this.gridItems,
                ),
              ),
              child: Image.asset(
                gridItems.imageUrl,
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
              gridItems.gridName,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: secondaryColor,
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
}
