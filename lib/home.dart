import 'dart:convert';

import 'package:cocktail/detail.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // var mytext = "Welcome to the placement portal";
  var api = "https://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail";
  var res, drinks;

  @override
  void initState() {
    super.initState();

    fetchData();
  }

  fetchData() async {
    res = await http.get(api);
    //print(res.body);
    drinks = jsonDecode(res.body)["drinks"];
    print(drinks.toString());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: Center(child: Text('Nokri')),
        elevation: 0.1,
      ),
      body: Center(
        //if you want in same row, use Row and then SizedBox with width prop
        child: res != null
            ? ListView.builder(
                //  itemExtent: 50.0,
                itemCount: drinks.length,
                itemBuilder: (context, index) {
                  var drink = drinks[index];

                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(drink['strDrinkThumb']),
                    ),
                    title: Text(
                      '${drink['strDrink']} ',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      '${drink['idDrink']} ',
                      style: TextStyle(
                        //fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Detail(),
                            fullscreenDialog: true,
                          ));
                    },
                  );
                },
              )
            : CircularProgressIndicator(
                backgroundColor: Colors.black,
              ),
      ),
    );
  }
}

//widget made by selecting and Extract Widget option in the bulb menu

/* class WeAreHiring extends StatelessWidget {
  const WeAreHiring({
    Key key,
    @required this.mytext,
  }) : super(key: key);

  final String mytext;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.network(
          'https://c1.wallpaperflare.com/preview/537/431/764/setting-hand-leave-job.jpg',
          fit: BoxFit.contain,
          height: 200.0,
          width: 200.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(mytext),
            SizedBox(
              width: 20,
            ),
            FlatButton(
              color: Colors.white,
              onPressed: () {
                /*   mytext = "Which field inspires you?";
                print(mytext);
                setState(() {}); */
              },
              child: Text('Press'),
            ),
          ],
        )
      ],
    );
  }
} */
