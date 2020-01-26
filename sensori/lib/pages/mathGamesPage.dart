import 'package:flutter/material.dart';
import 'package:sensori/pages/gamePage.dart';
import 'package:sensori/pages/registerPage.dart';
import 'package:flutter/services.dart';
import 'package:sensori/pages/trophyRoomPage.dart';

class MathGamesPage extends StatefulWidget {
  MathGamesPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MathGamesPageState createState() => _MathGamesPageState();
}

class _MathGamesPageState extends State<MathGamesPage> {
  Future setOrientationToLandscape() async {
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    setOrientationToLandscape();
    // Scaffold is a layout for the major Material Components.
    return new Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          leading: new IconButton(
            icon: Icon(Icons.arrow_back),
            tooltip: 'back',
            onPressed: () => {Navigator.pop(context)},
          ),
          title:
              new Text('Math Games', style: Theme.of(context).textTheme.title),
          actions: <Widget>[
            new IconButton(
              icon: Icon(Icons.account_circle),
              tooltip: 'Trophy Room',
              onPressed: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context) => TrophyRoomPage()))
              },
            ),
          ],
        ),
        // body is the majority of the screen.
        body: new Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/starry-background.jpg"),
              fit: BoxFit.cover
            )
          ),
          child: new Column(
            children: <Widget>[
              new Container(
                padding: EdgeInsets.all(5.0),
                child: new GestureDetector(
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => GamePage()))
                  },
                  child: new Container(
                    margin: EdgeInsets.only(top: height*0.02),
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height*0.15
                    ),
                    child: new Card(
                    color: Color.fromARGB(255, 0, 166, 255),
                    elevation: 10.0,
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        new Container(
                          margin: EdgeInsets.all(6.0),
                          child: new Text(
                            "Equations Puzzle",
                            style: TextStyle(
                              color: Colors.white,
                              shadows: [Shadow(
                                blurRadius: 2.0,
                                color: Colors.black,
                                offset: Offset(3.0, 3.0)
                              )],),
                          ),
                        ),
                        new Container(
                          constraints: new BoxConstraints(
                            maxHeight: 100,
                            maxWidth: 100,
                          ),
                        child: new Image.asset("assets/images/math/021-maths.png"),
                            )
                      ],
                    ),
                  ),
                  ),
                   
                ),
              ),
              new Container(
                padding: EdgeInsets.all(5.0),
                  child: new Container(
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height*0.15
                    ),
                    child: new Card(
                    color: Color.fromARGB(255, 120,19,235),
                    elevation: 10.0,
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        new Container(
                          margin: EdgeInsets.all(6.0),
                          child: new Text(
                            "Fractions Puzzle",
                            style: TextStyle(
                              color: Colors.white,
                              shadows: [Shadow(
                                blurRadius: 2.0,
                                color: Colors.black,
                                offset: Offset(3.0, 3.0)
                              )],),
                          ),
                        ),
                        new Container(
                          constraints: new BoxConstraints(
                            maxHeight: 100,
                            maxWidth: 100,
                          ),
                        child: new Image.asset("assets/images/math/008-board-1.png"),
                            )
                      ],
                    ),
                  ),
                  ),
              ),
              new Container(
                padding: EdgeInsets.all(5.0),
                child: new GestureDetector(
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => GamePage()))
                  },
                  child: new Container(
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height*0.15
                    ),
                    child: new Card(
                    color: Color.fromARGB(255, 255,38,30),
                    elevation: 10.0,
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        new Container(
                          margin: EdgeInsets.all(6.0),
                          child: new Text(
                            "Arithmetic Puzzle",
                            style: TextStyle(
                              color: Colors.white,
                              shadows: [Shadow(
                                blurRadius: 2.0,
                                color: Colors.black,
                                offset: Offset(3.0, 3.0)
                              )],),
                          ),
                        ),
                        new Container(
                          constraints: new BoxConstraints(
                            maxHeight: 100,
                            maxWidth: 100,
                          ),
                        child: new Image.asset("assets/images/math/013-math-2.png"),
                            )
                      ],
                    ),
                  ),
                  ),
                   
                ),
              ),
              new Container(
                padding: EdgeInsets.all(5.0),
                  child: new Container(
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height*0.15
                    ),
                    child: new Card(
                    color: Color.fromARGB(255, 120,19,235),
                    elevation: 10.0,
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        new Container(
                          margin: EdgeInsets.all(6.0),
                          child: new Text(
                            "Geometry Puzzle",
                            style: TextStyle(
                              color: Colors.white,
                              shadows: [Shadow(
                                blurRadius: 2.0,
                                color: Colors.black,
                                offset: Offset(3.0, 3.0)
                              )],),
                          ),
                        ),
                        new Container(
                          constraints: new BoxConstraints(
                            maxHeight: 100,
                            maxWidth: 100,
                          ),
                        child: new Image.asset("assets/images/math/018-geometry-1.png"),
                            )
                      ],
                    ),
                  ),
                  ), 
                ),
              new Container(
                padding: EdgeInsets.all(5.0),
                  child: new Container(
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height*0.15
                    ),
                    child: new Card(
                    color: Color.fromARGB(255, 255, 237, 13),
                    elevation: 10.0,
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        new Container(
                          margin: EdgeInsets.all(6.0),
                          child: new Text(
                            "Division Puzzle",
                            style: TextStyle(
                              color: Colors.white,
                              shadows: [Shadow(
                                blurRadius: 2.0,
                                color: Colors.black,
                                offset: Offset(3.0, 3.0)
                              )],),
                          ),
                        ),
                        new Container(
                          constraints: new BoxConstraints(
                            maxHeight: 100,
                            maxWidth: 100,
                          ),
                        child: new Image.asset("assets/images/math/006-pie-chart.png"),
                            )
                      ],
                    ),
                  ),
                  ),
                ),
            ],),
          ),
        );
  }
}
