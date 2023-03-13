import 'package:flutter/material.dart';

Widget goalStats(int expandedTime, int homeGoals, int awayGoals) {
  var home = homeGoals;
  var away = awayGoals;

  if (home == null) home = 0;
  if (away == null) away = 0;

  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "$expandedTime'",
          style: const TextStyle(
            fontSize: 30.0,
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              "$home -$away",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 36.0,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
