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
                SizedBox(
                  height: 52,
                ),
                ListTile(
                  title: Text(
                    "Email Address",
                    style: TextStyle(fontSize: 20, color: Colors.white70),
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
                              hintText: "Enter your Email address",
                              hintStyle: TextStyle(fontSize: 15)),
                        ),
                      ),
                    ],
                  ),
                  leading: Icon(Icons.email, color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text(
                    "Username",
                    style: TextStyle(fontSize: 20, color: Colors.white70),
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
                              hintText: "Enter your Username",
                              hintStyle: TextStyle(fontSize: 15)),
                        ),
                      ),
                    ],
                  ),
                  leading: Icon(Icons.email, color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text(
                    "Password",
                    style: TextStyle(fontSize: 20, color: Colors.white70),
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
                              hintText: "Enter your Password",
                              hintStyle: TextStyle(fontSize: 15)),
                        ),
                      ),
                    ],
                  ),
                  leading: Icon(Icons.email, color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: (){Navigator.pushNamed(context,
                          "/homescreen");},
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
