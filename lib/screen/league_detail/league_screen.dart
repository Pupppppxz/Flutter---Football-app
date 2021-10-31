// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:footballapp/constant.dart';
import 'package:footballapp/screen/league_detail/components/app_bar.dart';
import 'package:footballapp/screen/league_detail/components/category_list.dart';
import 'package:footballapp/screen/league_detail/components/statistics/top_assists.dart';
import 'package:footballapp/screen/league_detail/components/statistics/top_red_card.dart';
import 'package:footballapp/screen/league_detail/components/statistics/top_score.dart';
import 'package:footballapp/screen/league_detail/components/statistics/top_yellow_card.dart';
import 'package:footballapp/screen/league_detail/components/table/table.dart';

class LeagueScreen extends StatefulWidget {
  final String leagueName;
  const LeagueScreen({
    Key? key,
    required this.leagueName,
  }) : super(key: key);

  @override
  _LeagueScreenState createState() => _LeagueScreenState();
}

class _LeagueScreenState extends State<LeagueScreen> {
  final double scrollHight = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: leagueDetailAppBar(context),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            CategoryList(
              imgLocation: 'assets/picture/stamfordbridge.jpg',
              title: 'Table',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return TableLeague();
                    },
                  ),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            CategoryList(
              imgLocation: 'assets/picture/messi.jpg',
              title: 'Squad XI',
              press: () {},
            ),
            SizedBox(
              height: 20,
            ),
            CategoryList(
              imgLocation: 'assets/picture/ronaldo.jpg',
              title: 'Top Scorer',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return TopScoreScreen(
                        context,
                        type: 'Goal',
                        title1: 'Top',
                        title2: 'Score',
                        color: myPinkColor,
                      );
                    },
                  ),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            CategoryList(
              imgLocation: 'assets/picture/debruyne.jpg',
              title: 'Top Assist',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return TopAssistsScreen(
                        context,
                        type: 'Assists',
                        title1: 'Top',
                        title2: 'Assists',
                        color: Colors.lightBlue,
                      );
                    },
                  ),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            CategoryList(
              imgLocation: 'assets/picture/ramos.png',
              title: 'Top Yellow Card',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return TopYellowCardScreen(
                        context,
                        type: 'Total',
                        title1: 'Top',
                        title2: 'Yellow Cards',
                        color: Colors.amber,
                      );
                    },
                  ),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            CategoryList(
              imgLocation: 'assets/picture/suarez.jpg',
              title: 'Top Red Card',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return TopRedCardScreen(
                        context,
                        type: 'Total',
                        title1: 'Top',
                        title2: 'Red Cards',
                        color: Colors.red,
                      );
                    },
                  ),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class ScrollList extends StatelessWidget {
  const ScrollList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        // padding: EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                padding: EdgeInsets.only(
                  top: 5,
                  bottom: 5,
                  left: 10,
                  right: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  "Top scorer",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: myPinkColor,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Top assists",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: myPinkColor,
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Top yellow card",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: myPinkColor,
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Top scorer",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: myPinkColor,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Container(
//             width: double.infinity,
//             height: MediaQuery.of(context).size.height - 123,
//             // color: myGreyColor,
//             child: DecoratedBox(
//               decoration: BoxDecoration(
//                 shape: BoxShape.rectangle,
//                 color: myGreyColor,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(50),
//                   topRight: Radius.circular(50),
//                 ),
//               ),
//               child: Padding(
//                 padding: EdgeInsets.all(10),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Image(
//                         image: AssetImage("assets/picture/ronaldo.jpg"),
//                         fit: BoxFit.cover,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           )