import 'package:flutter/material.dart';
import 'package:sensori/utils/utils.dart';

import 'gamesPage.dart';

class TrophyRoomPage extends StatefulWidget {
  TrophyRoomPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TrophyRoomPageState createState() => _TrophyRoomPageState();
}

class _TrophyRoomPageState extends State<TrophyRoomPage> {
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
            onPressed: () => {Navigator.pop(context)},
          ),
          title: new Text(
            'Trophy Room',
            style: Theme.of(context).textTheme.title,
          ),
          actions: <Widget>[
            new IconButton(
              icon: Icon(Icons.home),
              tooltip: 'Home',
              onPressed: () => Navigator.push(context, SlideLeftRoute(page: GamesPage())),
            ),
          ],
        ),
        body: new Container(
            child: new Stack(children: <Widget>[
          new Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/starry-background.jpg"),
                    fit: BoxFit.cover)),
          ),
          new Column(mainAxisAlignment: MainAxisAlignment.center, children: <
              Widget>[
            new Container(
                constraints: new BoxConstraints(minHeight: height * 0.13),
                margin: EdgeInsets.all(2.0),
                child: new Stack(
                  children: <Widget>[
                    new Positioned(
                      child: new Container(
                        margin: EdgeInsets.only(
                            top: height * 0.02, left: width * 0.05),
                        constraints: new BoxConstraints(maxWidth: width * 0.9),
                        decoration: new BoxDecoration(
                          color: Color.fromARGB(255, 0, 166, 255),
                          borderRadius: new BorderRadius.circular(5.0),
                        ),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            new Container(
                              child: new Row(
                                //             mainAxisAlignment: MainAxisAlignment.spaceAroun,
                                children: <Widget>[
                                  new Container(
                                    margin: EdgeInsets.only(
                                        left: width * 0.1, right: width * 0.1),
                                    child: new Row(
                                      children: <Widget>[
                                        new Container(
                                          //                     margin: EdgeInsets.only(right: width*0.2, left: width*0.02),
                                          child: new Text(
                                            "5",
                                            style: new TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                            ),
                                          ),
                                        ),
                                        new Container(
                                          padding: EdgeInsets.all(2.0),
                                          child: new Image.asset(
                                            "assets/images/medal.png",
                                            height: 60,
                                            width: 60,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  new Container(
                                    child: new Row(
                                      children: <Widget>[
                                        new Container(
                                          margin: EdgeInsets.only(
                                              right: width * 0.1),
                                          child: new Row(
                                            children: <Widget>[
                                              new Container(
                                                padding: EdgeInsets.all(2.0),
                                                child: new Text(
                                                  "5",
                                                  style: new TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 25,
                                                  ),
                                                ),
                                              ),
                                              new Container(
                                                padding: EdgeInsets.all(2.0),
                                                child: new Image.asset(
                                                  "assets/images/trophy.png",
                                                  height: 60,
                                                  width: 60,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    new Positioned(
                      bottom: 10,
                      child: new Container(
                        constraints: BoxConstraints(
                            maxHeight: 100,
                            maxWidth: 100,
                            minWidth: 100,
                            minHeight: 100),
                        child: new Image.asset("assets/images/planet1.png"),
                      ),
                    ),
                  ],
                )),
            new Container(
                constraints: new BoxConstraints(minHeight: height * 0.13),
                margin: EdgeInsets.all(2.0),
                child: new Stack(
                  children: <Widget>[
                    new Positioned(
                      child: new Container(
                        margin: EdgeInsets.only(
                            top: height * 0.02, left: width * 0.05),
                        constraints: new BoxConstraints(maxWidth: width * 0.9),
                        decoration: new BoxDecoration(
                          color: Color.fromARGB(255, 255,38,30),
                          borderRadius: new BorderRadius.circular(5.0),
                        ),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            new Container(
                              child: new Row(
                                //             mainAxisAlignment: MainAxisAlignment.spaceAroun,
                                children: <Widget>[
                                  new Container(
                                    margin: EdgeInsets.only(
                                        left: width * 0.1, right: width * 0.1),
                                    child: new Row(
                                      children: <Widget>[
                                        new Container(
                                          //                     margin: EdgeInsets.only(right: width*0.2, left: width*0.02),
                                          child: new Text(
                                            "5",
                                            style: new TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                            ),
                                          ),
                                        ),
                                        new Container(
                                          padding: EdgeInsets.all(2.0),
                                          child: new Image.asset(
                                            "assets/images/medal.png",
                                            height: 60,
                                            width: 60,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  new Container(
                                    child: new Row(
                                      children: <Widget>[
                                        new Container(
                                          margin: EdgeInsets.only(
                                              right: width * 0.1),
                                          child: new Row(
                                            children: <Widget>[
                                              new Container(
                                                padding: EdgeInsets.all(2.0),
                                                child: new Text(
                                                  "5",
                                                  style: new TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 25,
                                                  ),
                                                ),
                                              ),
                                              new Container(
                                                padding: EdgeInsets.all(2.0),
                                                child: new Image.asset(
                                                  "assets/images/trophy.png",
                                                  height: 60,
                                                  width: 60,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    new Positioned(
                      bottom: 10,
                      child: new Container(
                        constraints: BoxConstraints(
                            maxHeight: 100,
                            maxWidth: 100,
                            minWidth: 100,
                            minHeight: 100),
                        child: new Image.asset("assets/images/planet2.png"),
                      ),
                    ),
                  ],
                )),
            new Container(
                constraints: new BoxConstraints(minHeight: height * 0.13),
                margin: EdgeInsets.all(2.0),
                child: new Stack(
                  children: <Widget>[
                    new Positioned(
                      child: new Container(
                        margin: EdgeInsets.only(
                            top: height * 0.02, left: width * 0.05),
                        constraints: new BoxConstraints(maxWidth: width * 0.9),
                        decoration: new BoxDecoration(
                          color: Color.fromARGB(255, 120,19,235),
                          borderRadius: new BorderRadius.circular(5.0),
                        ),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            new Container(
                              child: new Row(
                                //             mainAxisAlignment: MainAxisAlignment.spaceAroun,
                                children: <Widget>[
                                  new Container(
                                    margin: EdgeInsets.only(
                                        left: width * 0.1, right: width * 0.1),
                                    child: new Row(
                                      children: <Widget>[
                                        new Container(
                                          //                     margin: EdgeInsets.only(right: width*0.2, left: width*0.02),
                                          child: new Text(
                                            "5",
                                            style: new TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                            ),
                                          ),
                                        ),
                                        new Container(
                                          padding: EdgeInsets.all(2.0),
                                          child: new Image.asset(
                                            "assets/images/medal.png",
                                            height: 60,
                                            width: 60,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  new Container(
                                    child: new Row(
                                      children: <Widget>[
                                        new Container(
                                          margin: EdgeInsets.only(
                                              right: width * 0.1),
                                          child: new Row(
                                            children: <Widget>[
                                              new Container(
                                                padding: EdgeInsets.all(2.0),
                                                child: new Text(
                                                  "5",
                                                  style: new TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 25,
                                                  ),
                                                ),
                                              ),
                                              new Container(
                                                padding: EdgeInsets.all(2.0),
                                                child: new Image.asset(
                                                  "assets/images/trophy.png",
                                                  height: 60,
                                                  width: 60,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    new Positioned(
                      bottom: 10,
                      child: new Container(
                        constraints: BoxConstraints(
                            maxHeight: 100,
                            maxWidth: 100,
                            minWidth: 100,
                            minHeight: 100),
                        child: new Image.asset("assets/images/sun.png"),
                      ),
                    ),
                  ],
                )),
                new Container(
                constraints: new BoxConstraints(minHeight: height * 0.13),
                margin: EdgeInsets.all(2.0),
                child: new Stack(
                  children: <Widget>[
                    new Positioned(
                      child: new Container(
                        margin: EdgeInsets.only(
                            top: height * 0.02, left: width * 0.05),
                        constraints: new BoxConstraints(maxWidth: width * 0.9),
                        decoration: new BoxDecoration(
                          color: Color.fromARGB(255, 255, 237, 13),
                          borderRadius: new BorderRadius.circular(5.0),
                        ),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            new Container(
                              child: new Row(
                                //             mainAxisAlignment: MainAxisAlignment.spaceAroun,
                                children: <Widget>[
                                  new Container(
                                    margin: EdgeInsets.only(
                                        left: width * 0.1, right: width * 0.1),
                                    child: new Row(
                                      children: <Widget>[
                                        new Container(
                                          //                     margin: EdgeInsets.only(right: width*0.2, left: width*0.02),
                                          child: new Text(
                                            "5",
                                            style: new TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                            ),
                                          ),
                                        ),
                                        new Container(
                                          padding: EdgeInsets.all(2.0),
                                          child: new Image.asset(
                                            "assets/images/medal.png",
                                            height: 60,
                                            width: 60,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  new Container(
                                    child: new Row(
                                      children: <Widget>[
                                        new Container(
                                          margin: EdgeInsets.only(
                                              right: width * 0.1),
                                          child: new Row(
                                            children: <Widget>[
                                              new Container(
                                                padding: EdgeInsets.all(2.0),
                                                child: new Text(
                                                  "5",
                                                  style: new TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 25,
                                                  ),
                                                ),
                                              ),
                                              new Container(
                                                padding: EdgeInsets.all(2.0),
                                                child: new Image.asset(
                                                  "assets/images/trophy.png",
                                                  height: 60,
                                                  width: 60,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    new Positioned(
                      bottom: 10,
                      child: new Container(
                        constraints: BoxConstraints(
                            maxHeight: 100,
                            maxWidth: 100,
                            minWidth: 100,
                            minHeight: 100),
                        child: new Image.asset("assets/images/planet5.png"),
                      ),
                    ),
                  ],
                )),
                new Container(
                constraints: new BoxConstraints(minHeight: height * 0.13),
                margin: EdgeInsets.all(2.0),
                child: new Stack(
                  children: <Widget>[
                    new Positioned(
                      child: new Container(
                        margin: EdgeInsets.only(
                            top: height * 0.02, left: width * 0.05),
                        constraints: new BoxConstraints(maxWidth: width * 0.9),
                        decoration: new BoxDecoration(
                          color: Color.fromARGB(255, 0, 166, 255),
                          borderRadius: new BorderRadius.circular(5.0),
                        ),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            new Container(
                              child: new Row(
                                //             mainAxisAlignment: MainAxisAlignment.spaceAroun,
                                children: <Widget>[
                                  new Container(
                                    margin: EdgeInsets.only(
                                        left: width * 0.1, right: width * 0.1),
                                    child: new Row(
                                      children: <Widget>[
                                        new Container(
                                          //                     margin: EdgeInsets.only(right: width*0.2, left: width*0.02),
                                          child: new Text(
                                            "5",
                                            style: new TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                            ),
                                          ),
                                        ),
                                        new Container(
                                          padding: EdgeInsets.all(2.0),
                                          child: new Image.asset(
                                            "assets/images/medal.png",
                                            height: 60,
                                            width: 60,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  new Container(
                                    child: new Row(
                                      children: <Widget>[
                                        new Container(
                                          margin: EdgeInsets.only(
                                              right: width * 0.1),
                                          child: new Row(
                                            children: <Widget>[
                                              new Container(
                                                padding: EdgeInsets.all(2.0),
                                                child: new Text(
                                                  "5",
                                                  style: new TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 25,
                                                  ),
                                                ),
                                              ),
                                              new Container(
                                                padding: EdgeInsets.all(2.0),
                                                child: new Image.asset(
                                                  "assets/images/trophy.png",
                                                  height: 60,
                                                  width: 60,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    new Positioned(
                      bottom: 10,
                      child: new Container(
                        constraints: BoxConstraints(
                            maxHeight: 100,
                            maxWidth: 100,
                            minWidth: 100,
                            minHeight: 100),
                        child: new Image.asset("assets/images/moon.png"),
                      ),
                    ),
                  ],
                )),
                new Container(
                constraints: new BoxConstraints(minHeight: height * 0.13),
                margin: EdgeInsets.all(2.0),
                padding: EdgeInsets.only(right: 9.5),
                child: new Stack(
                  children: <Widget>[
                    new Positioned(
                      child: new Container(
                        margin: EdgeInsets.only(
                            top: height * 0.02, left: width * 0.1),
                        constraints: new BoxConstraints(maxWidth: width * 0.9),
                        decoration: new BoxDecoration(
                          color: Color.fromARGB(255, 120,19,235),
                          borderRadius: new BorderRadius.circular(5.0),
                        ),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            new Container(
                              child: new Row(
                                //             mainAxisAlignment: MainAxisAlignment.spaceAroun,
                                children: <Widget>[
                                  new Container(
                                    margin: EdgeInsets.only(
                                        left: width * 0.1, right: width * 0.1),
                                    child: new Row(
                                      children: <Widget>[
                                        new Container(
                                          //                     margin: EdgeInsets.only(right: width*0.2, left: width*0.02),
                                          child: new Text(
                                            "5",
                                            style: new TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                            ),
                                          ),
                                        ),
                                        new Container(
                                          padding: EdgeInsets.all(2.0),
                                          child: new Image.asset(
                                            "assets/images/medal.png",
                                            height: 60,
                                            width: 60,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  new Container(
                                    child: new Row(
                                      children: <Widget>[
                                        new Container(
                                          margin: EdgeInsets.only(
                                              right: width * 0.1),
                                          child: new Row(
                                            children: <Widget>[
                                              new Container(
                                                padding: EdgeInsets.all(2.0),
                                                child: new Text(
                                                  "5",
                                                  style: new TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 25,
                                                  ),
                                                ),
                                              ),
                                              new Container(
                                                padding: EdgeInsets.all(2.0),
                                                child: new Image.asset(
                                                  "assets/images/trophy.png",
                                                  height: 60,
                                                  width: 60,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    new Positioned(
                      bottom: 10,
                      child: new Container(
                        constraints: BoxConstraints(
                            maxHeight: 100,
                            maxWidth: 100,
                            minWidth: 100,
                            minHeight: 100),
                        child: new Image.asset("assets/images/planet3.png"),
                      ),
                    ),
                  ],
                )),
          ]),
        ])));
  }
}
