import 'package:flutter/material.dart';
import 'package:soccerapp/models/api_service.dart';
import 'package:soccerapp/widgets/soccer_fixture.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //initialize get data method
  @override
  void initState() {
    super.initState();
    SoccerApi().getFixtureMatches();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Football Fixtures'),
        centerTitle: true,
      ),
      body: FutureBuilder<dynamic>(
          future: SoccerApi().getFixtureMatches(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return soccerPageBody(snapshot.data);
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
