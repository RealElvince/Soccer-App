import 'package:flutter/material.dart';

Widget teamStats(String team, String teamName, String logoUrl) {
  return Expanded(
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // team
          Text(
            team,
            style: const TextStyle(fontSize: 20.0),
          ),
          const SizedBox(
            height: 10.0,
          ),

          Expanded(
            child: Image.network(
              logoUrl,
              width: 54.0,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),

          Text(
            teamName,
            style: const TextStyle(fontSize: 20.0),
          ),
        ]),
  );
}
