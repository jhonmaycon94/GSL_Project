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
      body: new Stack(
        alignment: Alignment.center,
        children: <Widget>[
          new Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/starry-background.jpg",
                    ),
                    fit: BoxFit.cover)),
          ),
          new Center(
              child: new Stack(
            children: <Widget>[
              new Container(
                width: 400.0,
                height: 400.0,
                decoration: new BoxDecoration(),
              ),
              new Positioned(
                child: new FloatingActionButton(
                  child: Image.asset("assets/images/planet1.png"),
                  elevation: 0,
                  onPressed: () => {},
                ),
                top: 20.0,
                left: 100.0,
              ),
              new Positioned(
                child: new Text("Geo",
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              ),
              new Positioned(
                child: new FloatingActionButton(
                  child: Image.asset("assets/images/planet2.png"),
                  elevation: 0,
                  onPressed: () => {},
                ),
                top: 160.0,
                left: 10.0,
              ),
              new Positioned(
                child: new Text("Geo",
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              ),
              new Positioned(
                child: new FloatingActionButton(
                  child: Image.asset("assets/images/planet3.png"),
                  elevation: 0,
                  onPressed: () => {},
                ),
                top: 160.0,
                right: 10.0,
              ),
              new Positioned(
                child: new Text("Geo",
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              ),
              new Positioned(
                child: new FloatingActionButton(
                  child: Image.asset("assets/images/planet4.png"),
                  elevation: 0,
                  onPressed: () => {},
                ),
                top: 325.0,
                left: 230.0,
              ),
              new Positioned(
                child: new Text("Geo",
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              ),
              new Positioned(
                child: new FloatingActionButton(
                  child: Image.asset("assets/images/planet5.png"),
                  elevation: 0,
                  onPressed: () => {},
                ),
                top: 30.0,
                left: 250.0,
              ),
              new Positioned(
                child: new Text("Geo",
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              ),
              new Positioned(
                child: new FloatingActionButton(
                  child: Image.asset("assets/images/moon.png"),
                  elevation: 0,
                  onPressed: () => {},
                ),
                top: 310.0,
                left: 80.0,
              ),
              new Positioned(
                child: new Text("Geo",
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              ),
                new Positioned(
                  child: new Container(
                    width: 140.0,
                    height: 140.0,
                    child: new RawMaterialButton(
                      child: Image.asset("assets/images/sun.png"),
                      shape: new CircleBorder(),
                      elevation: 0,
                      onPressed: () => {},
                    ),
                  ),
                  top: 130.0,
                  left: 130.0,
                ),
                new Positioned(
                  top: 270,
                  left: 180,
                  child: new Text(
                    "Math",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
            ]),
        ),
        ],
      ),
    );
  }
}
