import "package:flutter/material.dart";
import 'pages/Loginpage.dart';
import 'pages/HomeScreenpage.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => MyApp(),
      '/login': (context) => LoginPageActivity(),
      '/homescreen': (context) => HomeScreenActivity(),
    },
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
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
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
              splashColor: Colors.red,
              child: Container(
                color: Colors.white70,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    "Press to Enter",
                    style: TextStyle(
                        fontSize: 20, letterSpacing: 5, wordSpacing: 10),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
