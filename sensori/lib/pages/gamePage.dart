import 'package:flutter/material.dart';
import 'package:sensori/pages/trophyRoomPage.dart';

class GamePage extends StatefulWidget {
  GamePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  
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
          title: new Text('Equation Puzzle',
          style: Theme.of(context).textTheme.title,),
          actions: <Widget>[
            new IconButton(
              icon: Icon(Icons.account_circle),
              tooltip: 'Trophy Room',
              onPressed: () => {
                Navigator.push(context, 
                MaterialPageRoute(
                  builder: (context) => TrophyRoomPage(title: "Trophy")
                ))
              },
            ),
          ],
        ),
        // body is the majority of the screen.
        body: new Container(
          
        ));
  }
}
