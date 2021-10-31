// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../constant.dart';

class LeagueItem extends StatelessWidget {
  final String imageLocation;
  final int leagueID;
  final Function press;
  const LeagueItem({
    Key? key,
    required this.imageLocation,
    required this.leagueID,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: myGreyColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.white.withOpacity(0.5),
          onTap: () {
            press();
          },
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageLocation),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
