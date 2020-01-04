import "package:flutter/material.dart";
import 'pages/Loginpage.dart';
import 'pages/HomeScreenpage.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => MyApp(),
      '/login': (context) => LoginPageActivity(),
      '/homescreen':(context)=>HomeScreenActivity(),
    },
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: <Widget>[
            Expanded(
              child: Image(
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRYNBxNj24T8NEM8-VxmcG1kH-e4syjORZHSxYsHRD5w3W71ozJ"),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                  splashColor: Colors.yellowAccent,
                  child: Text(
                    "Press to enter",
                    style: TextStyle(
                        color: Colors.white70,
                        wordSpacing: 10,
                        letterSpacing: 5,
                        fontSize: 20),
                  ),
                  color: Colors.grey[850],
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  }),
            )
          ],
        ),
      ),
    );
  }
}
