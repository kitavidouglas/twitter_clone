import 'package:flutter/material.dart';
import 'package:twitter_clone/screens/home/home.dart';
import 'package:twitter_clone/screens/settings/settings.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'X Home Page',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/settings': (context) => SettingsScreen(),
      },
    );
  }
}
