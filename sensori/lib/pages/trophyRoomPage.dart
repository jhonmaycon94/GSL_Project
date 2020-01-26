import 'package:flutter/material.dart';
import 'package:sensori/pages/registerPage.dart';

class TrophyRoomPage extends StatefulWidget {
  TrophyRoomPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TrophyRoomPageState createState() => _TrophyRoomPageState();
}

class _TrophyRoomPageState extends State<TrophyRoomPage> {
  @override
  Widget build(BuildContext context) {
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
          title: new Text('Trophy Room',
          style: Theme.of(context).textTheme.title,),
          actions: <Widget>[
            new IconButton(
              icon: Icon(Icons.account_circle),
              tooltip: 'Trophy Room',
              onPressed: null,
            ),
          ],
        ),
        body: new Container(
            child: new Stack(
          children: <Widget>[
            new Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/starry-background.jpg"
                  ),
                  fit: BoxFit.cover
                  )
              ),
            ),
            new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                      margin: EdgeInsets.all(10.0),
                      child: new Stack(
                        children: <Widget>[
                          new Positioned(
                            child: new Container(
                              decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(5.0),
                            color: Color.fromARGB(255, 255, 237, 13),
                          ),
                              child: new Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          new Container(
                            child: new Row(
                              children: <Widget>[
                                new Container(
                                  padding: EdgeInsets.all(4.0),
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
                                new Container(
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
                          )
                              ],
                            ),
                          )
                        ],
                      ),
                            ),
                          ),
                          new Positioned(
                            child: new Container(
                              constraints: BoxConstraints(
                                maxHeight: 100,
                                maxWidth: 100,
                                minWidth: 100,
                                minHeight: 100
                              ),
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: new Image.asset("assets/images/planet1.png"),
                            ),
                          ),
                        ],
                      )),
                  new Container(
                      child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Container(
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(5.0),
                            color: Colors.pink,
                          ),
                          margin: EdgeInsets.all(10.0),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              new Container(
                                child: new Text("data"),
                              ),
                              new Container(
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
                                        "assets/images/medal.png",
                                        height: 60,
                                        width: 60,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              new Container(
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
                                          width: 60),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                      new Container(
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Container(
                                decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  color: Colors.purple,
                                ),
                                margin: EdgeInsets.all(10.0),
                                child: new Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    new Container(
                                      child: new Text("data"),
                                    ),
                                    new Container(
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
                                              "assets/images/medal.png",
                                              height: 60,
                                              width: 60,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    new Container(
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
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ],
                  ))
                ]),
          ],
        )));
  }
}
