// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  final String title, imgLocation;
  final Function press;
  const CategoryList({
    Key? key,
    required this.title,
    required this.imgLocation,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        press();
      },
      child: Container(
        width: double.infinity,
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          // color: myGreyColor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(50),
          image: DecorationImage(
            image: AssetImage(imgLocation),
            fit: BoxFit.cover,
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
