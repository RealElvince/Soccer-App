import 'package:flutter/material.dart';
import 'package:soccerapp/pages/home_page.dart';

void main() => runApp(const SoccerApp());

class SoccerApp extends StatelessWidget {
  const SoccerApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Soccer App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const HomePage(),
    );
  }
}
