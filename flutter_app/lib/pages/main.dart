import 'package:flutter/material.dart';
import 'WelcomePage.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => MainPage(),
      '/welcome': (context) => WelcomePage()
    },
  ));
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

String name, emailid, password;

class _MainPageState extends State<MainPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final _controller = TextEditingController();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          centerTitle: true,
          textTheme: TextTheme(
              title: TextStyle(letterSpacing: 5, fontSize: 25, wordSpacing: 5)),
        ),
        body: Form(
            key: _formKey,
            child: ListView(
              children: <Widget>[
                _textFieldList(
                    icon: Icons.account_box, title: "Name", variable: "name"),
                _textFieldList(
                    icon: Icons.email, title: "Email-id", variable: "emailid"),
                _textFieldList(
                    icon: Icons.lock, title: "Password", variable: "password"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(labelText: "nickname"),
                    controller: _controller,
                  ),
                ),
                FlatButton(
                  child: Text("For Alert"),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(_controller.text),
                          );
                        });
                  },
                ),
                RaisedButton(
                  onPressed: ()  {
//                    if (!_formKey.currentState.validate()) return;
                     _formKey.currentState.save();
                      Navigator.pushNamed(context,'/welcome',arguments: {
                        'value':name,
                      });
                  },
                  child: Text("Submit"),
                )
              ],
            )),
      ),
    );
  }
}

Widget _textFieldList(
    {@required IconData icon,
    @required String title,
    @required String variable}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ListTile(
      leading: Icon(
        icon,
        size: 35,
      ),
      title: Text(title),
      subtitle: TextFormField(
        validator: (String value) {
          if (value.isEmpty) return "Please enter details";
          return null;
        },
        onSaved: (value) {
          switch (variable) {
            case "name":name=value;
            break;
            case "password":password=value;
            break;
            case "emailid": emailid=value;
          }
//          print(variable);
        },
      ),
    ),
  );
}
