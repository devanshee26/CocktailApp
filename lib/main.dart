import 'package:cocktail/home.dart';
import 'package:flutter/material.dart';

const Color myColor = Colors.cyan;

void main() {
  runApp(MyApp());
}

//stateless and statefull widgets

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Canteen Application',
      theme: ThemeData(
        primarySwatch: myColor,
        fontFamily: "Lora",
        // accentColor: Colors.cyan,
        //buttonTheme: ButtonThemeData(), //works only witht the raised button!
      ),
      home: Home(),
    );
  }
}
