import 'package:flutter/material.dart';
import 'package:odile/Subject.dart';

final _backgroundColor=Colors.lightBlueAccent;
final _appbarColor=Colors.blue;

const _baseColors = <Color>[
  Colors.teal,
  Colors.orange,
  Colors.pinkAccent,
  Colors.blueAccent,
  Colors.yellow,
  Colors.greenAccent,
];


class ThemePage extends StatelessWidget{
  static Subject _subject;

  ThemePage(Subject subject){
    _subject=subject;
  }

  final appBar = AppBar(
    backgroundColor: _appbarColor,
    title: Row(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(left: 67.0)),
        Icon(Icons.question_answer),
        Text("Odile")
      ],
    ),
    centerTitle: true,
    elevation: 14.0,
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.account_circle),
        onPressed: () {
          print("I was tapped");
        },
        splashColor: _backgroundColor,
      ),
    ],
  );

  final body= Center(
    child: Container(
      child: Text(_subject.name),
    ),
  );


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: appBar,
      body: body,
    );
  }


}