// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:footballapp/screen/league_detail/components/statistics/statistic_appbar.dart';
import 'package:footballapp/screen/league_detail/components/tableBody.dart/top_score.dart';
import 'package:footballapp/screen/league_detail/components/tableBody.dart/top_yellow_card.dart';

import '../../../../constant.dart';

class TopYellowCardScreen extends StatelessWidget {
  final String type, title1, title2;
  final Color color;
  const TopYellowCardScreen(
    param0, {
    Key? key,
    required this.type,
    required this.title1,
    required this.title2,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBlackColor,
      appBar: statisticAppBar(context, title1: title1, title2: title2),
      body: BodyStatistic(
        type: type,
        color: color,
        title2: title2,
      ),
    );
  }
}

class BodyStatistic extends StatelessWidget {
  final String type, title2;
  final Color color;
  const BodyStatistic({
    Key? key,
    required this.type,
    required this.color,
    required this.title2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height - 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: dataTopYellowCardBody(title2: title2, color: color, type: type),
    );
  }
}
