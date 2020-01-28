import 'package:flutter/material.dart';
import 'package:sensori/pages/trophyRoomPage.dart';
import 'package:sensori/utils/utils.dart';

class LearningTypePage extends StatefulWidget {
  LearningTypePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LearningTypePageState createState() => _LearningTypePageState();
}

class _LearningTypePageState extends State<LearningTypePage> {
  int _currValue = 1;

  @override
  Widget build(BuildContext context) {
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
          'Learning Types',
          style: Theme.of(context).textTheme.title,
        ),
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
      body: SingleChildScrollView(
          child: new Container(
        //       color: Color.fromARGB(255, 0, 166, 255),
        padding: EdgeInsets.only(top: 20.0),
        child: new Column(
          children: <Widget>[
            new Container(
                margin: EdgeInsets.only(bottom: 20),
                child: new Card(
                    elevation: 10,
                    color: Color.fromARGB(255, 120, 19, 235),
                    child: new Container(
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      child: new Column(
                        children: <Widget>[
                          new Container(
                            child: new Text(
                              "What kind of book would you like to read for fun?",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey[300],
                              ),
                            ),
                          ),
                          new Container(
                            child: new Column(
                              children: <Widget>[
                                new Row(
                                  children: <Widget>[
                                    new Radio(
                                      value: 1,
                                      groupValue: _currValue,
                                      onChanged: (int i) => setState(() => _currValue = i)
                                    ),
                                    new Text(
                                        "A book with lots of pictures in it",
                                        textAlign: TextAlign.center),
                                  ],
                                ),
                                new Row(
                                  children: <Widget>[
                                   new Radio(
                                      value: 0,
                                      groupValue: _currValue,
                                      onChanged: (int i) => setState(() => _currValue = i)
                                    ),
                                    new Text("A book with lots of words in it")
                                  ],
                                ),
                                new Row(
                                  children: <Widget>[
                                    new Radio(
                                      value: 0,
                                      groupValue: _currValue,
                                      onChanged: (int i) => setState(() => _currValue = i)
                                    ),
                                    new Text(
                                        "A book with word searches\n or crossword puzzles",
                                        textAlign: TextAlign.center)
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ))),
            new Container(
                margin: EdgeInsets.only(bottom: 20),
                child: new Card(
                  elevation: 10,
                  child: new Container(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    color: Color.fromARGB(255, 120, 19, 235),
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: new Text(
                            "When you are not sure how to spell a word, what are you most likely to do?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.grey[300],
                            ),
                          ),
                        ),
                        new Container(
                          child: new Column(
                            children: <Widget>[
                              new Row(
                                children: <Widget>[
                                  new Radio(
                                      value: 1,
                                      groupValue: _currValue,
                                      onChanged: (int i) => setState(() => _currValue = i)
                                    ),
                                  new Text(
                                    "Write it down to see if it looks\n right",
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                              new Row(
                                children: <Widget>[
                                  new Radio(
                                      value: 0,
                                      groupValue: _currValue,
                                      onChanged: (int i) => setState(() => _currValue = i)
                                    ),
                                  new Text(
                                    "Spell it out loud to see if it\n sounds right",
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                              new Row(
                                children: <Widget>[
                                  new Radio(
                                      value: 0,
                                      groupValue: _currValue,
                                      onChanged: (int i) => setState(() => _currValue = i)
                                    ),
                                  new Text(
                                    "Trace the letters in the air\n (finger spelling)",
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )),
            new Container(
                margin: EdgeInsets.only(bottom: 20),
                child: new Card(
                  elevation: 10,
                  color: Color.fromARGB(255, 120, 19, 235),
                  child: new Container(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: new Text(
                            "You're out shopping for clothes, and you're waiting in line to pay. What are you most likely to do while you are waiting?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.grey[300],
                            ),
                          ),
                        ),
                        new Container(
                          child: new Column(
                            children: <Widget>[
                              new Row(
                                children: <Widget>[
                                  new Radio(
                                      value: 1,
                                      groupValue: _currValue,
                                      onChanged: (int i) => setState(() => _currValue = i)
                                    ),
                                  new Text(
                                      "Look around at other clothes\n on the racks")
                                ],
                              ),
                              new Row(
                                children: <Widget>[
                                  new Radio(
                                      value: 0,
                                      groupValue: _currValue,
                                      onChanged: (int i) => setState(() => _currValue = i)
                                    ),
                                  new Text(
                                      "Talk to the person next\n to you in line")
                                ],
                              ),
                              new Row(
                                children: <Widget>[
                                  new Radio(
                                      value: 0,
                                      groupValue: _currValue,
                                      onChanged: (int i) => setState(() => _currValue = i)
                                    ),
                                  new Text("Fidget or move back\n and forth")
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )),
            new Container(
              margin: EdgeInsets.only(bottom: 20),
              child: new Card(
                elevation: 10,
                  color: Color.fromARGB(255, 120, 19, 235),
                  child: new Container(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: new Text(
                            "You're out shopping for clothes, and you're waiting in line to pay. What are you most likely to do while you are waiting?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.grey[300],
                            ),
                          ),
                        ),
                        new Container(
                          child: new Column(
                            children: <Widget>[
                              new Row(
                                children: <Widget>[
                                  new Radio(
                                      value: 1,
                                      groupValue: _currValue,
                                      onChanged: (int i) => setState(() => _currValue = i)
                                    ),
                                  new Text(
                                      "Look around at other clothes\n on the racks")
                                ],
                              ),
                              new Row(
                                children: <Widget>[
                                  new Radio(
                                      value: 0,
                                      groupValue: _currValue,
                                      onChanged: (int i) => setState(() => _currValue = i)
                                    ),
                                  new Text(
                                      "Talk to the person next\n to you in line")
                                ],
                              ),
                              new Row(
                                children: <Widget>[
                                 new Radio(
                                      value: 0,
                                      groupValue: _currValue,
                                      onChanged: (int i) => setState(() => _currValue = i)
                                    ),
                                  new Text("Fidget or move back\n and forth")
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ],
        ),
      )),
    );
  }
}
