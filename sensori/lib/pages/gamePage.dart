import 'package:flutter/material.dart';

class GamesPage extends StatelessWidget {
  GamesPage({Key key, this.title}) : super(key: key);

  final String title;

   @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            centerTitle: true,
            leading: new IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'Navigation menun',
              onPressed: null,
            ),
            title: new Text('Games'),
            actions: <Widget>[
              new IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Search',
                onPressed: null,
              )
            ]),
    );
}
}