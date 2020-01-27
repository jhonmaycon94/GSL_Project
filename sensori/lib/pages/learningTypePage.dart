import 'package:flutter/material.dart';
import 'package:sensori/pages/registerPage.dart';
import 'package:sensori/pages/trophyRoomPage.dart';
import 'package:sensori/utils/utils.dart';

class LearningTypePage extends StatefulWidget {
  LearningTypePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LearningTypePageState createState() => _LearningTypePageState();
}

class _LearningTypePageState extends State<LearningTypePage> {

  _handleRadioValueChange1(){

  }

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    var _radioValue1;
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
              title: new Text('Learning Types',
              style: Theme.of(context).textTheme.title,),
              actions: <Widget>[
                new IconButton(
                  icon: Icon(Icons.account_circle),
                  tooltip: 'Trophy Room',
                  onPressed: () => {
                    Navigator.push(context, SlideLeftRoute(page: TrophyRoomPage()))
                  },
                ),
              ],
            ),
            // body is the majority of the screen.
            body: new Container(
              color: Color.fromARGB(255, 0, 166, 255),
              padding: EdgeInsets.only(top: 20.0),
              child: new Column(
                children: <Widget>[
                  new Column(
                    children: <Widget>[
                      new Container(
                        child: new Text("What kind of book would you like to read for fun?"),
                      ),
                      new Container(
                        child: new Column(
                          children: <Widget>[
                            new Row(
                              children: <Widget>[
                                new Radio(
                              value: 0,
                              groupValue: _radioValue1,
                              onChanged: _handleRadioValueChange1(), 
                        ),
                        new Text("A book with lots of pictures in it")
                              ],
                            ),
                        new Row(
                              children: <Widget>[
                                new Radio(
                              value: 0,
                              groupValue: _radioValue1,
                              onChanged: _handleRadioValueChange1(), 
                        ),
                        new Text("A book with lots of words in it")
                              ],
                            ),
                            new Row(
                              children: <Widget>[
                                new Radio(
                              value: 0,
                              groupValue: _radioValue1,
                              onChanged: _handleRadioValueChange1(), 
                        ),
                        new Text("A book with word searches or crossword puzzles")
                              ],
                            ),
                      ],
                    ),
                  )
                ],
              ),
              new Column(
                    children: <Widget>[
                      new Container(
                        child: new Text("Pergunta"),
                      ),
                      new Container(
                        child: new Column(
                          children: <Widget>[
                            new Row(
                              children: <Widget>[
                                new Radio(
                              value: 0,
                              groupValue: _radioValue1,
                              onChanged: _handleRadioValueChange1(), 
                        ),
                        new Text("Resposta1")
                              ],
                            ),
                        new Row(
                              children: <Widget>[
                                new Radio(
                              value: 0,
                              groupValue: _radioValue1,
                              onChanged: _handleRadioValueChange1(), 
                        ),
                        new Text("Resposta2")
                              ],
                            ),
                            new Row(
                              children: <Widget>[
                                new Radio(
                              value: 0,
                              groupValue: _radioValue1,
                              onChanged: _handleRadioValueChange1(), 
                        ),
                        new Text("Resposta3")
                              ],
                            ),
                      ],
                    ),
                  )
                ],
              ),new Column(
                    children: <Widget>[
                      new Container(
                        child: new Text("Pergunta"),
                      ),
                      new Container(
                        child: new Column(
                          children: <Widget>[
                            new Row(
                              children: <Widget>[
                                new Radio(
                              value: 0,
                              groupValue: _radioValue1,
                              onChanged: _handleRadioValueChange1(), 
                        ),
                        new Text("Resposta1")
                              ],
                            ),
                        new Row(
                              children: <Widget>[
                                new Radio(
                              value: 0,
                              groupValue: _radioValue1,
                              onChanged: _handleRadioValueChange1(), 
                        ),
                        new Text("Resposta2")
                              ],
                            ),
                            new Row(
                              children: <Widget>[
                                new Radio(
                              value: 0,
                              groupValue: _radioValue1,
                              onChanged: _handleRadioValueChange1(), 
                        ),
                        new Text("Resposta3")
                              ],
                            ),
                      ],
                    ),
                  )
                ],
              ),new Column(
                    children: <Widget>[
                      new Container(
                        child: new Text("Pergunta"),
                      ),
                      new Container(
                        child: new Column(
                          children: <Widget>[
                            new Row(
                              children: <Widget>[
                                new Radio(
                              value: 0,
                              groupValue: _radioValue1,
                              onChanged: _handleRadioValueChange1(), 
                        ),
                        new Text("Resposta1")
                              ],
                            ),
                        new Row(
                              children: <Widget>[
                                new Radio(
                              value: 0,
                              groupValue: _radioValue1,
                              onChanged: _handleRadioValueChange1(), 
                        ),
                        new Text("Resposta2")
                              ],
                            ),
                            new Row(
                              children: <Widget>[
                                new Radio(
                              value: 0,
                              groupValue: _radioValue1,
                              onChanged: _handleRadioValueChange1(), 
                        ),
                        new Text("Resposta3")
                              ],
                            ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ), 
        ));
  }
}