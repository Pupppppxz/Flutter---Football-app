// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TeamStatictic extends StatelessWidget {
  final int win, draw, lose;
  const TeamStatictic({
    Key? key,
    required this.win,
    required this.draw,
    required this.lose,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.green,
          ),
          child: Text("$win"),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey,
          ),
          child: Text("$draw"),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.red,
          ),
          child: Text("$lose"),
        ),
      ],
    );
  }
}
