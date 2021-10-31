// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:footballapp/screen/league_detail/class/top_all.dart';

SingleChildScrollView dataTopScoreBody(
    {required String title2, required String type, required Color color}) {
  List<StatisticsClass> top;
  return SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: DataTable(
      columnSpacing: 10,
      showBottomBorder: true,
      columns: [
        DataColumn(label: Text("")),
        DataColumn(
          label: Text(
            "Name",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ),
        DataColumn(
          label: Text(
            "Nation",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ),
        DataColumn(
          label: Text(
            "Club",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ),
        DataColumn(
          label: Text(
            type,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ),
      ],
      rows: getTopScore.map<DataRow>((StatisticsClass top) {
        return DataRow(
          cells: [
            DataCell(
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    top.pictureUrl,
                  ),
                ),
              ),
            ),
            DataCell(Text(
              top.name,
              style: TextStyle(fontSize: 12),
            )),
            DataCell(Text(
              top.nation,
              style: TextStyle(fontSize: 12),
            )),
            DataCell(Text(
              top.club,
              style: TextStyle(fontSize: 12),
            )),
            DataCell(
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Text(
                  "${top.total}",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        );
      }).toList(),
    ),
  );
}
