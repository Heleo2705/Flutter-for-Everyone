import 'package:flutter/material.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = TextEditingController();
  String result = "Here will be the results";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            TextField(
              key: Key('textField'),
              style: TextStyle(fontSize: 35),
              decoration: InputDecoration(
                hintText: "enter the integer to "
                    "convert",
                hintStyle: TextStyle(fontSize: 30),
              ),
              controller: controller,
            ),
            Container(
              child: Text(
                result,
                style: TextStyle(fontSize: 30),
              ),
            ),
            RaisedButton(
              child: Text(
                "Inch to Meter",
                style: TextStyle(fontSize: 28),
              ),
              onPressed: () {
                setState(() {
                  result = controller.text;
                  result = convert(result: result);
                });
              },
            )
          ],
        )),
      ),
    );
  }
}

String convert({@required String result}) {
  double x = double.parse(result);
  x = x * 0.0254;
  return result = x.toString();
}
