import 'package:flutter/material.dart';
import 'package:sensori/pages/registerPage.dart';
import 'package:sensori/pages/trophyRoomPage.dart';
import 'package:sensori/pages/mathGamesPage.dart';
import 'package:sensori/utils/utils.dart';

import 'learningTypePage.dart';
import 'loginPage.dart';

class GamesPage extends StatelessWidget {
  GamesPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return new Scaffold(
      drawer: Drawer(
          child: Container(
        padding: EdgeInsets.only(top: height * 0.05),
        color: Color.fromARGB(255, 120,19,235),
        child: Column(
          children: <Widget>[
            new Container(
              constraints: BoxConstraints(
                  minWidth: MediaQuery.of(context).size.width,
                  maxWidth: MediaQuery.of(context).size.width,
                  maxHeight: 180),
                  decoration: BoxDecoration(
//                    color: Color.fromARGB(255, 0, 166, 255),
                            border: Border(
                              bottom: BorderSide(
                                width: 1.0,
                                color: Color.fromARGB(100, 0, 0, 0),
                              )
                            )
                          ),
              padding: EdgeInsets.all(height * 0.02),
              child: Image.asset("assets/images/logo.png"),
            ),
            new Container(
              child: new Column(
                children: <Widget>[
                  new GestureDetector(
                      onTap: () => {
                            Navigator.push(
                                context,
                                SizeRoute(
                                    page: LoginPage("Login")))
                          },
                      child: new Container(
                          decoration: BoxDecoration(
//                            color: Color.fromARGB(255, 120,19,235),
                            border: Border(
                              bottom: BorderSide(
                                width: 1.0,
                                color: Color.fromARGB(100, 0, 0, 0),
                              )
                            )
                          ),
            //          margin: EdgeInsets.only(bottom: height * 0.01),
                          padding: EdgeInsets.all(height * 0.03),
                          child: new Row(
                            children: <Widget>[
                              new Text(
                                "Login",
                              ),
                            ],
                          ))),
                  new GestureDetector(
                      onTap: () => {
                            Navigator.push(
                                context,
                                SizeRoute(
                                    page:
                                        RegisterPage("Register")))
                          },
                      child: new Container(
                        decoration: BoxDecoration(
//                          color: Color.fromARGB(255, 255,38,30),
                            border: Border(
                              bottom: BorderSide(
                                width: 1.0,
                                color: Color.fromARGB(100, 0, 0, 0),
                              )
                            )
                          ),
                        padding: EdgeInsets.all(height * 0.03),
                        child: new Row(
                          children: <Widget>[new Text("Register")],
                        ),
                      )),
                  new GestureDetector(
                    onTap: () => {
                      Navigator.push(
                          context,
                          SizeRoute(
                              page: LearningTypePage()))
                    },
                    child: new Container(
                      decoration: BoxDecoration(
//                        color: Color.fromARGB(255, 0, 166, 255),
                            border: Border(
                              bottom: BorderSide(
                                width: 1.0,
                                color: Color.fromARGB(100, 0, 0, 0),
                              )
                            )
                          ),
                        padding: EdgeInsets.all(height * 0.03),
                        child: new Row(
                          children: <Widget>[
                            new Text("Learning Types Test"),
                          ],
                        )),
                  ),
                  new GestureDetector(
                      onTap: null,
                      child: new Container(
                        decoration: BoxDecoration(
//                          color: Color.fromARGB(255, 255,38,30),
                            border: Border(
                              bottom: BorderSide(
                                width: 1.0,
                                color: Color.fromARGB(100, 0, 0, 0),
                              )
                            )
                          ),
                        padding: EdgeInsets.all(height * 0.03),
                        child: new Row(
                          children: <Widget>[new Text("Configurações")],
                        ),
                      )),
                      new GestureDetector(
                      onTap: null,
                      child: new Container(
                        decoration: BoxDecoration(
//                          color: Color.fromARGB(255, 255,38,30),
                            border: Border(
                              bottom: BorderSide(
                                width: 1.0,
                                color: Color.fromARGB(100, 0, 0, 0),
                              )
                            )
                          ),
                        padding: EdgeInsets.all(height * 0.03),
                        child: new Row(
                          children: <Widget>[new Text("Contato")],
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      )),
      appBar: new AppBar(
          centerTitle: true,
          title: new Text(
            'Games',
            style: Theme.of(context).textTheme.title,
          ),
          actions: <Widget>[
            new IconButton(
              icon: Icon(Icons.account_circle),
              tooltip: 'Trophy Room',
              onPressed: () => {
                Navigator.push(
                    context,
                    SlideLeftRoute(
                        page: TrophyRoomPage(title: "Trophy")))
              },
            )
          ]),
      body: new Stack(
        children: <Widget>[
          new Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/starry-background.jpg",
                    ),
                    fit: BoxFit.cover)),
          ),
          new Container(
            padding: EdgeInsets.only(left: 80.0, top: 50.0),
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width,
              maxHeight: 200.0,
            ),
            child: new Text(
              "Pick the subject!",
              style: TextStyle(
                  shadows: [
                    Shadow(
                        blurRadius: 2.0,
                        color: Colors.purple,
                        offset: Offset(3.0, 3.0)),
                  ],
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  fontFamily: "SeymourOne"),
            ),
          ),
          new Center(
            child: new Stack(children: <Widget>[
              new Container(
                width: 400.0,
                height: 400.0,
                decoration: new BoxDecoration(),
              ),
              new Positioned(
                child: Column(
                  children: <Widget>[
                    new FloatingActionButton(
                      heroTag: "planet1",
                      child: Image.asset("assets/images/planet1.png"),
                      elevation: 0,
                      onPressed: () => {},
                    ),
                    new Text(
                      "Arts",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
                top: 20.0,
                left: 100.0,
              ),
              new Positioned(
                child: Column(
                  children: <Widget>[
                    new FloatingActionButton(
                      heroTag: "planet2",
                      child: Image.asset("assets/images/planet2.png"),
                      elevation: 0,
                      onPressed: () => {},
                    ),
                    new Text(
                      "science",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
                top: 160.0,
                left: 10.0,
              ),
              new Positioned(
                child: new Column(
                  children: <Widget>[
                    new FloatingActionButton(
                      heroTag: "planet3",
                      child: Image.asset("assets/images/planet3.png"),
                      elevation: 0,
                      onPressed: () => {},
                    ),
                    new Text(
                      "English",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
                top: 160.0,
                right: 10.0,
              ),
              new Positioned(
                child: new Column(
                  children: <Widget>[
                    new FloatingActionButton(
                      heroTag: "planet4",
                      child: Image.asset("assets/images/planet4.png"),
                      elevation: 0,
                      onPressed: () => {},
                    ),
                    new Text(
                      "Portuguese",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
                top: 325.0,
                left: 230.0,
              ),
              new Positioned(
                child: new Column(
                  children: <Widget>[
                    new FloatingActionButton(
                      heroTag: "planet5",
                      child: Image.asset("assets/images/planet5.png"),
                      elevation: 0,
                      onPressed: () => {},
                    ),
                    new Text(
                      "Geo",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
                top: 30.0,
                left: 250.0,
              ),
              new Positioned(
                child: new Column(
                  children: <Widget>[
                    new FloatingActionButton(
                      heroTag: "history",
                      child: Image.asset("assets/images/moon.png"),
                      elevation: 0,
                      onPressed: () => {},
                    ),
                    new Text(
                      "History",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
                top: 310.0,
                left: 80.0,
              ),
              new Positioned(
                child: new Column(
                  children: <Widget>[
                    new Container(
                      width: 140.0,
                      height: 140.0,
                      child: new RawMaterialButton(
                        child: Image.asset("assets/images/sun.png"),
                        shape: new CircleBorder(),
                        elevation: 0,
                        onPressed: () => {
                          Navigator.push(
                              context,
                              ScaleRoute(
                                  page: MathGamesPage()))
                        },
                      ),
                    ),
                    new Text(
                      "Math",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
                top: 130.0,
                left: 130.0,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
