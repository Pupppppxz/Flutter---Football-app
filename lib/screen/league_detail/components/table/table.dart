// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:footballapp/screen/league_detail/class/table.dart';
import 'package:footballapp/screen/league_detail/components/table/statistics.dart';
import 'package:footballapp/screen/league_detail/components/table/table_appbar.dart';

import '../../../../constant.dart';

class TableLeague extends StatelessWidget {
  const TableLeague({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBlackColor,
      appBar: tableAppBar(context),
      body: BodyTable(),
    );
  }
}

class BodyTable extends StatelessWidget {
  const BodyTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<TableClass> table;
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
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: DataTable(
          columnSpacing: 20,
          showBottomBorder: true,
          columns: [
            DataColumn(label: Text("")),
            DataColumn(
              label: Text(
                "Team",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
            ),
            DataColumn(
              label: Text(
                "Point",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
            ),
            DataColumn(
              label: Text(
                "Form",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
            ),
            DataColumn(
              label: Text(
                "W-D-L",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
            ),
          ],
          rows: getTable.map<DataRow>((TableClass table) {
            return DataRow(
              cells: [
                DataCell(Text("${table.place}")),
                DataCell(Text(
                  table.name,
                  style: TextStyle(fontSize: 12),
                )),
                DataCell(Text("${table.point}")),
                DataCell(Text("${table.form}")),
                DataCell(TeamStatictic(
                    win: table.win, draw: table.draw, lose: table.lose)),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
