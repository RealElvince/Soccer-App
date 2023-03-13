import 'package:flutter/material.dart';
import 'package:soccerapp/models/soccer_model.dart';
import 'package:soccerapp/widgets/goal_stats.dart';
import 'package:soccerapp/widgets/match_tile.dart';
import 'package:soccerapp/widgets/team_stats.dart';

Widget soccerPageBody(List<SoccerMatch> allMatches) {
  return Column(
    children: <Widget>[
      Expanded(
        flex: 2,
        child: Container(
          child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 24.0, horizontal: 18.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    teamStats("Local Teams", allMatches[0].home.logoUrl,
                        allMatches[0].home.name),
                    goalStats(allMatches[0].fixture.status.elaspeTime,
                        allMatches[0].goals.home, allMatches[0].goals.away),
                    teamStats("Away Teams", allMatches[0].home.logoUrl,
                        allMatches[0].home.name),
                  ])),
        ),
      ),
      Expanded(
        flex: 5,
        child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'MATCHES',
                  style: TextStyle(color: Colors.white, fontSize: 24.0),
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: allMatches.length,
                    itemBuilder: (context, int index) {
                      return matchTile(allMatches[index]);
                    },
                  ),
                )
              ],
            )),
      ),
    ],
  );
}
