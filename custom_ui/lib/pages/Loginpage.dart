import 'package:flutter/material.dart';

class LoginPageActivity extends StatefulWidget {
  @override
  _LoginPageActivityState createState() => _LoginPageActivityState();
}

class _LoginPageActivityState extends State<LoginPageActivity> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Login"),
          backgroundColor: Colors.grey[900],
        ),
        backgroundColor: Colors.black54,
        body: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                Listtilepro("Email ID", Icon(Icons.email)),
                Listtilepro("Username", Icon(Icons.contacts)),
                Listtilepro("Password", Icon(Icons.lock)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/homescreen");
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      color: Colors.grey[850],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget Listtilepro(String text, Icon iconpreview) {
  return Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 30),
        child: ListTileTheme(
          textColor: Colors.white70,
          iconColor: Colors.white,
          child: ListTile(
            title: Text(
              "$text",
            ),
            subtitle: Column(
              children: <Widget>[
                SizedBox(
                  height: 8,
                ),
                Container(
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter your $text",
                        hintStyle: TextStyle(fontSize: 15)),
                  ),
                ),
              ],
            ),
            leading: iconpreview,
          ),
        ),
      ),
    ],
  );
}
