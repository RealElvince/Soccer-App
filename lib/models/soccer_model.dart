// main class for our Soccer model
class SoccerMatch {
  final String apiUrl = 'https://v3.football.api-sports.io/fixtures?live=all';

  static const apiKey = 'aaf934251amsh57abd01da53cbfap15796ajsnbb7eec4940d5';

  static const hedars = {
    'x-rapidapi-host': 'v3.football.api-sports.io',
    'x-rapidapi-key': apiKey,
  };

  Fixture fixture;
  Team home;
  Team away;
  SoccerGoals goals;

  SoccerMatch(this.fixture, this.home, this.away, this.goals);

  factory SoccerMatch.fromJson(Map<String, dynamic> json) {
    return SoccerMatch(
        Fixture.fromJson(json['fixture']),
        Team.fromJson(json['teams']['home']),
        Team.fromJson(json['teams']['away']),
        SoccerGoals.fromJson(json['goals']));
  }
}

// Fixture
class Fixture {
  int id;
  String date;
  SoccerStatus status;
  Fixture(this.id, this.date, this.status);

  factory Fixture.fromJson(Map<String, dynamic> json) {
    return Fixture(json['id'], json['date'], json['status']);
  }
}

// Team data
class Team {
  int id;
  String name;
  bool winner;
  String logoUrl;

  Team(this.id, this.logoUrl, this.winner, this.name);

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(json['id'], json['logoUrl'], json['winner'], json['name']);
  }
}

// store goals data
class SoccerGoals {
  int home;
  int away;

  SoccerGoals(this.home, this.away);

  factory SoccerGoals.fromJson(Map<String, dynamic> json) {
    return SoccerGoals(
      json['home'],
      json['away'],
    );
  }
}

// Fixture Status
class SoccerStatus {
  int elaspeTime;
  int long;

  SoccerStatus(this.elaspeTime, this.long);

  factory SoccerStatus.fromJson(Map<String, dynamic> json) {
    return SoccerStatus(json['elasped'], json['long']);
  }
}
