// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../../constant.dart';

AppBar tableAppBar(BuildContext context) {
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
    title: Text(
      "Table",
      style: TextStyle(
        color: myPinkColor,
        fontWeight: FontWeight.bold,
        fontSize: 23,
      ),
    ),
  );
}
