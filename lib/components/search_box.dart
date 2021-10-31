// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:footballapp/constant.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        // onChanged: ,
        decoration: InputDecoration(
          hintText: "Search your team",
          border: InputBorder.none,
          hintStyle: TextStyle(color: myLightGrey),
          icon: Icon(
            Icons.search,
            color: myLightGrey,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: myGreyColor,
        border: Border.all(color: myGreyColor),
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
