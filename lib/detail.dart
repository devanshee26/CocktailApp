import 'package:flutter/material.dart';

import 'main.dart';

class Detail extends StatelessWidget {
  final drink;

  const Detail({Key key, @required this.drink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [myColor, Colors.white])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(drink['strDrink']),
          elevation: 0.0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: drink["idDrink"],
                child: CircleAvatar(
                  radius: 100.0,
                  backgroundImage: NetworkImage(drink['strDrinkThumb']),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'ID : ${drink['idDrink']} ',
                style: TextStyle(
                  //fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              Text(
                '${drink['strDrink']} ',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
