import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/utils/colors.dart';
import 'package:flutter_uas_testing/utils/sizes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.0,
        backgroundColor: primaryColor,
        elevation: 0,
        title: Text(
          'Support Us',
          style: TextStyle(
              color: secondaryColor,
              fontSize: 30.0,
              fontWeight: FontWeight.w700),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: buttonhiglightColor,
            size: 30.0,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(
            top: TSizes.topPad,
            left: TSizes.leftPad,
            bottom: TSizes.botPad,
            right: TSizes.rightPad),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: background,
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                'PT. CENTRAL MALL KELOLA',
                style: TextStyle(
                    color: secondaryColor,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.02,
            ),
            Container(
              child: Text(
                'Our Address',
                style: TextStyle(
                    color: secondaryColor,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.01,
            ),
            Container(
              child: Text(
                "Management Office Central Park 3rd Mezzanine Floor, Podomoro City. Jalan Let. Jend. S.Parman Kav. 28",
                style: TextStyle(
                    color: secondaryColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.01,
            ),
            Container(
              child: Text(
                "Kel. Tanjung Duren Selatan",
                style: TextStyle(
                    color: secondaryColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.01,
            ),
            Container(
              child: Text(
                "Kec. Grogol Petamburan",
                style: TextStyle(
                    color: secondaryColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.01,
            ),
            Container(
              child: Text(
                "Kota Adm. Jakarta Barat, Prov. DKI Jakarta",
                style: TextStyle(
                    color: secondaryColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.01,
            ),
            Container(
              child: Text(
                "Phone Number",
                style: TextStyle(
                    color: secondaryColor,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.01,
            ),
            Container(
              child: Text(
                "+62 (021) 56988888",
                style: TextStyle(
                    color: secondaryColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.01,
            ),
            Container(
              child: Text(
                "Follow us on",
                style: TextStyle(
                    color: secondaryColor,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.instagram,
                      color: buttonhiglightColor,
                      size: 15.0,
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.01,
                    ),
                    Text(
                      'Instagram',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                          color: secondaryColor),
                    ),
                  ],
                ),
                Text(
                  '@CentralParkMall',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: secondaryColor),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.facebook,
                      color: buttonhiglightColor,
                      size: 15.0,
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.01,
                    ),
                    Text(
                      'Facebook',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                          color: secondaryColor),
                    ),
                  ],
                ),
                Text(
                  'CentralParkMallJkt',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: secondaryColor),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.twitter,
                      color: buttonhiglightColor,
                      size: 15.0,
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.01,
                    ),
                    Text(
                      'Twitter',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                          color: secondaryColor),
                    ),
                  ],
                ),
                Text(
                  '@CentralParkMall',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: secondaryColor),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
