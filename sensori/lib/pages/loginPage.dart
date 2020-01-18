import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _password;
  String _username;
  final _formKey = new GlobalKey<FormState>();

  validateAndSave() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      print("form is valid! Username: $_username, password: $_password");
    } else {
      print("form is not valid");
    }
  }

  register() {}
  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.purple,
          leading: new IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null,
          ),
          title: new Text('Sensori'),
          actions: <Widget>[
            new IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null,
            ),
          ],
        ),
        // body is the majority of the screen.
        body: new Container(
          padding: EdgeInsets.all(20.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Row(
                children: <Widget>[
                  new Container(
                    padding: EdgeInsets.only(top: 40.0),
                    child: new Image.asset('assets/logo.png'),
                    )
                ],
              ),
              new Form(
                  key: _formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'username',
                              hintText: 'Enter your username',
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'username cannot be empty';
                              }
                              return null;
                            },
                            onSaved: (value) => _username = value),
                        new TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'password',
                              hintText: 'Enter your password',
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'password cannot be empty';
                              }
                              return null;
                            },
                            obscureText: true,
                            onSaved: (value) => _password = value),
                        new Container(
                          padding: EdgeInsets.all(16.0),
                          child: new RaisedButton(
                              child: new Text("Login",
                                  style: new TextStyle(fontSize: 20.0)),
                              onPressed: validateAndSave),
                        )
                      ])),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      new Text("don't have an account?"),
                      new RaisedButton(
                        child: new Text(
                          "Register",
                          style: new TextStyle(fontSize: 20.0),
                        ),
                        onPressed: register,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
