import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'package:soccerapp/models/soccer_model.dart';

// main class for our Soccer Api
class SoccerApi {
  final String apiUrl = 'https://v3.football.api-sports.io/fixtures?live=all';

  static const apiKey = 'aaf934251amsh57abd01da53cbfap15796ajsnbb7eec4940d5';

  static const headers = {
    'x-rapidapi-host': 'v3.football.api-sports.io',
    'x-rapidapi-key': apiKey,
  };

  //get data method
  Future<List<SoccerMatch>> getFixtureMatches() async {
    http.Response res = await http.get(Uri.parse(apiUrl));

    var body;

    // check if we are connected to the database
    if (res.statusCode == 200) {
      body = convert.jsonDecode(res.body);
      List<dynamic> matchList = body['response'];
      print("Api service:${body}"); // to debug

      List<SoccerMatch> matches =
          matchList.map((dynamic item) => SoccerMatch.fromJson(item)).toList();
      return matches;
    }
    return getFixtureMatches();
  }
}
