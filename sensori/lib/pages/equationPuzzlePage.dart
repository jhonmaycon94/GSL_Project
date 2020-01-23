import 'package:flutter/material.dart';
import 'package:sensori/pages/registerPage.dart';
import 'package:flutter/services.dart';

class EquationPuzzlePage extends StatelessWidget {
  EquationPuzzlePage({Key key, this.title}) : super(key: key);

  final String title;

  Future setOrientationToLandscape() async {
    await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft]);
  }

  @override
  Widget build(BuildContext context) {
    setOrientationToLandscape();
    // Scaffold is a layout for the major Material Components.
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        leading: new IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: new Text('Equation Puzzle'),
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
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Container(
            child: new Text("How to play"),
          ),
          new Container(
            margin: EdgeInsets.only(bottom: 20),
            child: new Column(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.only(bottom: 5, top: 5),
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.7,
                      ),
                      child: new Text(
                        "Use the arrowkeys to move the character",
                        style: new TextStyle(fontSize: 20),
                      ),
                    ),
//                      new Image.asset();
                  ],
                ),
                new Row(
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.all(2),
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.7,
                      ),
                      child: new Text(
                        "Each tile you step will be added to the equation",
                        style: new TextStyle(fontSize: 20),
                      ),
                    ),
//                    new Image.asset();
                  ],
                ),
                new Row(
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.all(2),
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.7,
                      ),
                      child: new Text(
                        "You must find an equation that results in the big number on the screen",
                        style: new TextStyle(fontSize: 20),
                      ),
                    ),
//                      new Image.asset();
                  ],
                ),
              ],
            ),
          ),
          new Container(
            alignment: Alignment.center,
            child: new RaisedButton(
              onPressed: () => {},
              child: new Text("Start"),
            ),
          )
        ],
      )),
    );
  }
}
