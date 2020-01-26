import 'package:flutter/material.dart';
import 'package:sensori/pages/registerPage.dart';

class LoginPage extends StatefulWidget {
  LoginPage(String s, {Key key, this.title}) : super(key: key);

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

  register() {
    Navigator.push(
      context, MaterialPageRoute(builder: (context) => RegisterPage("Register"))
    );
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // Scaffold is a layout for the major Material Components.
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
          title: new Text('Login',
          style: Theme.of(context).textTheme.title,),
          actions: <Widget>[
            new IconButton(
              icon: Icon(Icons.account_circle),
              tooltip: 'Trophy Room',
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
