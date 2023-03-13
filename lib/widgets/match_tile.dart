import 'package:flutter/material.dart';
import 'package:soccerapp/models/soccer_model.dart';

Widget matchTile(SoccerMatch fixtureMatch) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 12.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          //home team
          child: Text(
            fixtureMatch.home.name,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white, fontSize: 16.0),
          ),
        ),
        // home team logo
        Image.network(fixtureMatch.home.logoUrl, width: 36.0),

        // results
        Expanded(
            child: Text(
          "${fixtureMatch.goals.home}-${fixtureMatch.goals.away}",
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white, fontSize: 16.0),
        )),

        // away team logo
        Image.network(
          fixtureMatch.away.logoUrl,
          width: 36.0,
        ),
        // away team name
        Expanded(
          //home team
          child: Text(
            fixtureMatch.away.name,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white, fontSize: 16.0),
          ),
        ),
      ],
    ),
  );
}
