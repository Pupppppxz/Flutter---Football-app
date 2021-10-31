// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constant.dart';

AppBar homeScreenAppBar() {
  return AppBar(
    backgroundColor: myBlackColor,
    centerTitle: true,
    elevation: 0,
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset("assets/icons/notification.svg"),
      ),
    ],
    leading: IconButton(
      icon: Image.asset("assets/picture/football.png"),
      onPressed: () {},
    ),
    title: RichText(
      text: TextSpan(
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
        children: [
          TextSpan(text: "Foot", style: TextStyle(color: myPinkColor)),
          TextSpan(text: "ball", style: TextStyle(color: myGreyColor))
        ],
      ),
    ),
  );
}
