import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

Widget carouselMake(List img) {
  return Container(
    padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
    child: CarouselSlider(
      items: img.map(
        (url) {
          return ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            child: Image.asset(
              url,
              fit: BoxFit.cover,
              width: 1000.0,
            ),
          );
        },
      ).toList(),
      options: CarouselOptions(
        height: 200.0,
        aspectRatio: 16 / 9,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
    ),
  );
}
