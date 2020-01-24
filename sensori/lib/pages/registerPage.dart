import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String _nickname;
  String _password;
  String _cPassword;
  String _username;
  final _formKey = new GlobalKey<FormState>();

  validateAndSave() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      print(
          "form is valid! Username: $_username, password: $_password, nickname: $_nickname, cPassword: $_cPassword");
    } else {
      print("form is not valid");
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            centerTitle: true,
            leading: new IconButton(
              icon: Icon(Icons.arrow_back),
              tooltip: 'back',
              onPressed: () => {
                Navigator.pop(context)
              },
            ),
            title: new Text('Register'),
            actions: <Widget>[
              new IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Search',
                onPressed: null,
              )
            ]),
        body: new Container(
          padding: EdgeInsets.all(20.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    TextFormField(
                        decoration: const InputDecoration(
                            labelText: 'nickname',
                            hintText: 'Enter your nickname'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'username cannot be empty';
                          }
                          return null;
                        },
                        onSaved: (value) => _nickname = value),
                    new TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'username',
                          hintText: 'Enter your username'),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'username cannot be empty';
                        }
                        return null;
                      },
                      onSaved: (value) => _username = value,
                    ),
                    new TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'password',
                          hintText: 'Enter your password'),
                      obscureText: true,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'password cannot be empty';
                        }
                        return null;
                      },
                      onSaved: (value) => _password = value,
                    ),
                    new TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Confirm Password',
                          hintText: 'Confirm your password'),
                      obscureText: true,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'password cannot be empty';
                        }
                        return null;
                      },
                      onSaved: (value) => _cPassword = value,
                    ),
                    new Container(
                      padding: EdgeInsets.all(16.0),
                      child: new RaisedButton(
                        child: new Text(
                          "NEXT",
                          style: new TextStyle(fontSize: 20.0),
                        ),
                        onPressed: validateAndSave,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
