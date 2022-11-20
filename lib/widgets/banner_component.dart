import 'package:flutter/material.dart';

Widget banner(String bannerText, String bannerImage) {
  return Stack(
    alignment: AlignmentDirectional.bottomCenter,
    children: [
      Container(
        height: 100,
        width: double.maxFinite,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Color(0xFFE7E6E9)),
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(bannerImage))),
      ),
      Container(
        width: double.maxFinite,
        height: 30,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 1, color: Color(0xFFE7E6E9)),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        child: Center(
          child: Text(
            bannerText,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF07A5A8),
            ),
          ),
        ),
      ),
    ],
  );
}
