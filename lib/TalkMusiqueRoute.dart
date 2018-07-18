import 'package:flutter/material.dart';

final _backgroundColor=Colors.lightBlueAccent;
final _appbarColor=Colors.blue;

class TalkMusiqueRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: _appbarColor,
      title: Row(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(left: 67.0)),
          Icon(Icons.question_answer),
          Text("Odile")
        ],
      ),
      leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print("I was tapped");
          }
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
    final body = Container(
      color: _backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Text("Wanna talk musique?")
    );
    return Scaffold(
      appBar: appBar,
      body: body,
    );
  }

}