import 'package:cocktail/home.dart';
import 'package:flutter/material.dart';

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
        primarySwatch: Colors.cyan,
       // accentColor: Colors.cyan,
        //buttonTheme: ButtonThemeData(), //works only witht the raised button!
      ),
      home: Home(),
    );
  }
}
