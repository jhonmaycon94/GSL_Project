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
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null,
          ),
          title: new Text('Trophy Room'),
          actions: <Widget>[
            new IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null,
            ),
          ],
        ),
        body: new Container(
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              new Container(
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(5.0),
                    color: Colors.orange,
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
                              child: new Text("5"),
                            ),
                            new Container(
                              padding: EdgeInsets.all(2.0),
                              child: new Text("data"),
                            )
                          ],
                        ),
                      ),
                      new Container(
                        child: new Row(
                          children: <Widget>[
                            new Container(
                              padding: EdgeInsets.all(2.0),
                              child: new Text("3"),
                            ),
                            new Container(
                              padding: EdgeInsets.all(2.0),
                              child: new Text("data"),
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
                                  child: new Text("5"),
                                ),
                                new Container(
                                  padding: EdgeInsets.all(2.0),
                                  child: new Text("data"),
                                )
                              ],
                            ),
                          ),
                          new Container(
                            child: new Row(
                              children: <Widget>[
                                new Container(
                                  padding: EdgeInsets.all(2.0),
                                  child: new Text("3"),
                                ),
                                new Container(
                                  padding: EdgeInsets.all(2.0),
                                  child: new Text("data"),
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
                                        child: new Text("5"),
                                      ),
                                      new Container(
                                        padding: EdgeInsets.all(2.0),
                                        child: new Text("data"),
                                      )
                                    ],
                                  ),
                                ),
                                new Container(
                                  child: new Row(
                                    children: <Widget>[
                                      new Container(
                                        padding: EdgeInsets.all(2.0),
                                        child: new Text("3"),
                                      ),
                                      new Container(
                                        padding: EdgeInsets.all(2.0),
                                        child: new Text("data"),
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
            ])));
  }
}
