import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage(String s, {Key key, this.title}) : super(key: key);

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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Row(
                children: <Widget>[
                  new Container(
                    constraints: BoxConstraints(
                      maxHeight: 400,
                      maxWidth: 352,
                    ),
                    padding: EdgeInsets.only(top: height*0.08, left: width*0.1, right: width*0.1,),
                    child: new Image.asset('assets/images/logo-with-name.png'),
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
                            labelText: 'How should we call you?',
                          ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'username cannot be empty';
                          }
                          return null;
                        },
                        onSaved: (value) => _nickname = value),
                    new TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'What name you want to login with?',
                         ),
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
                          labelText: 'Choose a password',
                          ),
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
                          labelText: 'Please repeat the password',
                          ),
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
