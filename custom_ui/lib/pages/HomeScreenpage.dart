import 'package:flutter/material.dart';

class HomeScreenActivity extends StatefulWidget {
  @override
  _HomeScreenActivityState createState() => _HomeScreenActivityState();
}

class _HomeScreenActivityState extends State<HomeScreenActivity> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black54,
        body: Container(
          decoration: BoxDecoration(
              border: Border(
                  left: BorderSide(color: Colors.grey, width: 4),
                  right: BorderSide(color: Colors.grey, width: 4),
                  bottom: BorderSide(color: Colors.grey, width: 4),
                  top: BorderSide(color: Colors.grey, width: 4)),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Center(
                  child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR8RHUMZO5DpWqShdYKiIk_CbgokpCWbdCCo0VmcleP8LRxiNn3"),
                radius: 80,
              )),
              SizedBox(
                height: 30,
              ),
              info("Name", "Nishaant Veer Dixit"),
              info("Username", "Heleo"),
              info("Hobbies", "Gaming,Reading"),
              info("Skills", "Android, Flutter"),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: NetworkImage(
                      "https://media1.tenor.com/images/e049c9833fb0989cc775c9e6e5284448/tenor.gif?itemid=13701777"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget info(String heading, String information) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          width: 10,
        ),
        Text(
          heading,
          style: TextStyle(color: Colors.grey, fontSize: 22),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          information,
          style: TextStyle(color: Colors.redAccent, fontSize: 26),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    ),
  );
}
