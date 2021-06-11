import 'package:flutter/material.dart';

import './pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Responsive GridView',
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.redAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 24, color: Colors.white),
          headline6: TextStyle(fontSize: 16, color: Colors.red),
        ),
      ),
      home: MyHomePage(
        title: 'Flutter Responsive GridView',
      ),
    );
  }
}
