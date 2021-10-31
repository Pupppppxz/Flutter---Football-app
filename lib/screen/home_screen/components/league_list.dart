// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:footballapp/components/search_box.dart';
import 'package:footballapp/screen/home_screen/components/league_item.dart';
import 'package:footballapp/screen/league_detail/league_screen.dart';

class LeagueItemList extends StatelessWidget {
  const LeagueItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchBox(),
        Center(
          child: Wrap(
            direction: Axis.horizontal,
            runSpacing: 20,
            children: [
              LeagueItem(
                imageLocation: "assets/picture/premierelogo.png",
                leagueID: 39,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LeagueScreen(
                          leagueName: "Premiere League",
                        );
                      },
                    ),
                  );
                },
              ),
              LeagueItem(
                imageLocation: "assets/picture/laligalogo.png",
                leagueID: 140,
                press: () {},
              ),
              LeagueItem(
                imageLocation: "assets/picture/Bundesliga_Logo.png",
                leagueID: 78,
                press: () {},
              ),
              LeagueItem(
                imageLocation: "assets/picture/serieAlogo.png",
                leagueID: 135,
                press: () {},
              ),
              LeagueItem(
                imageLocation: "assets/picture/leagueone.png",
                leagueID: 61,
                press: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
