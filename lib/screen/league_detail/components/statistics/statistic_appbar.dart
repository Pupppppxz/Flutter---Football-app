// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../../../constant.dart';

AppBar statisticAppBar(BuildContext context,
    {required String title1, required String title2}) {
  return AppBar(
    centerTitle: true,
    backgroundColor: myBlackColor,
    elevation: 0,
    leading: IconButton(
      icon: Image(
        image: AssetImage("assets/picture/backicon.png"),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    title: RichText(
      text: TextSpan(
        style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        children: [
          TextSpan(text: title1, style: TextStyle(color: myPinkColor)),
          TextSpan(text: title2, style: TextStyle(color: myGreyColor)),
        ],
      ),
    ),
  );
}
