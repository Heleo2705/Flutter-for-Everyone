import 'package:flutter/material.dart';
import 'main.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import '../Classes/APIcall.dart';
import '../Classes/PlaceHolderAPi.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  Map data;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<apicall>(
          create: (context) => apicall(),
        ),
        ChangeNotifierProvider<jsonPlaceHoder>(
          create: (context) => jsonPlaceHoder(),
        )
      ],
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Consumer<apicall>(
                builder: (context, apicall, child) {
                  apicall.getData();
                  if (apicall.imageurl == "Hello")
                    return Text(
                      apicall.imageurl,
                      style: TextStyle(fontSize: 45),
                    );
                  else
                    return Image(
                      image: NetworkImage(apicall.imageurl),
                    );
                },
              ),
            ),
            Container(
              child: Consumer<jsonPlaceHoder>(
                builder: (context, jsonPlaceHolder, child) {
                  jsonPlaceHolder.getDataJson();
                  if (jsonPlaceHolder.datafromjson["title"] != null)
                    return Text(
                      jsonPlaceHolder.datafromjson["title"],
                      style: TextStyle(fontSize: 45),
                    );
                  else
                    return Container(
                      height: 100,
                      color: Colors.red,
                    );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
