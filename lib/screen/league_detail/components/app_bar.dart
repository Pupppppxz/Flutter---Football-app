// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constant.dart';

AppBar leagueDetailAppBar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    backgroundColor: myBlackColor,
    elevation: 0,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Image.asset("assets/picture/backicon.png"),
    ),
    title: RichText(
      text: TextSpan(
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
        children: [
          TextSpan(text: "Premiere", style: TextStyle(color: myPinkColor)),
          TextSpan(text: "League", style: TextStyle(color: myGreyColor)),
        ],
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset("assets/icons/notification.svg"),
      ),
    ],
  );
}
