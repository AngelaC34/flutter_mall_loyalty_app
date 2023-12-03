// ignore_for_file: unnecessary_new, avoid_unnecessary_containers, avoid_print, unnecessary_null_comparison, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_uas_testing/functions/bottomnavbar.dart';
import 'package:flutter_uas_testing/utils/colors.dart';
import 'package:flutter_uas_testing/utils/universalvars.dart';
import '../../../functions/settingstextfield.dart';
import '../../../utils/sizes.dart';

import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  TextEditingController first = new TextEditingController();

  File? file;
  ImagePicker image = ImagePicker();
  var url =
      "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png";

  @override
  void dispose() {
    first.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        toolbarHeight: 60.0,
        elevation: 0.0,
        title: Text(
          'Profile Settings',
          style: TextStyle(
              color: secondaryColor,
              fontSize: 30.0,
              fontWeight: FontWeight.w700),
        ),
        leading: IconButton(
          onPressed: () {
            setState(() {
              Navigator.of(context).pop();
            });
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: buttonhiglightColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(
              top: 20.0,
              left: TSizes.leftPad,
              bottom: TSizes.botPad,
              right: TSizes.rightPad),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.0,
                          color: buttonhiglightColor,
                        ),
                        borderRadius: BorderRadius.circular(150.0)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(150.0),
                      child: Image.network(
                        url.toString(),
                        fit: BoxFit.cover,
                        height: 150.0,
                        width: 150.0,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0.0,
                    bottom: 0.0,
                    child: FloatingActionButton(
                      backgroundColor: buttonhiglightColor,
                      onPressed: () {
                        getImage();
                      },
                      child: const Icon(Icons.camera_alt),
                    ),
                  )
                ],
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 30.0,
                            ),
                            Text(
                              'UserName',
                              style: TextStyle(
                                color: secondaryColor,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width * 0.9,
                              child: SetTextField(controller: first),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 30.0),
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: buttonhiglightColor),
                          child: TextButton(
                            onPressed: () {
                              tunggu();
                            },
                            child: Text(
                              'Save Changes',
                              style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  getImage() async {
    var img = await image.pickImage(source: ImageSource.camera);
    setState(() {
      file = File(img!.path);
    });
    uploadFile();
  }

  uploadFile() async {
    try {
      var imagefile = FirebaseStorage.instance
          .ref()
          .child("contact_photo")
          .child("/${first.text}.jpg");
      UploadTask task = imagefile.putFile(file!);
      TaskSnapshot snapshot = await task;
      url = await snapshot.ref.getDownloadURL();
      setState(() {
        url = url;
      });
    } on Exception catch (e) {
      print(e);
    }
  }

  simpan() async {
    if (url != null) {
      await FirebaseFirestore.instance.collection('user').doc(uid).set({
        'url': url,
        'points': points,
        'username': first.text,
        'email': email
      });
      print('123');
      username = first.text;
      photo = url;
      setState(() {});
    }
  }

  Future<void> tunggu() async {
    await simpan();
    Navigator.push(context, MaterialPageRoute(builder: (context) => const NavBar()));
  }
}