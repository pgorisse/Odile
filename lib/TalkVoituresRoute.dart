import 'package:flutter/material.dart';

final _backgroundColor=Colors.lightBlueAccent;
final _appbarColor=Colors.blue;
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

class TalkVoituresRoute extends StatefulWidget{
  TalkVoituresRoute({this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    final body = Container(
      color: color,
      width: 10.0,
      height: 10.0,
      child: Text("Hello"),
    );
    return Scaffold(
      appBar: appBar,
      body: body,
    );
  }

  @override
  TalkVoituresState createState() => TalkVoituresState();

}

class TalkVoituresState extends State<TalkVoituresRoute>{
  @override
  var color = Colors.blue;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Row(
          children: <Widget>[
            RaisedButton(
                onPressed: () {
                  print("blabla");
                  if (color==Colors.blue){
                    color=Colors.red;
                  } else {
                    color=Colors.blue;
                  }
                  setState(() {

                  });
                },
                child: Text("click"),
            ),
            Container(
              width: 50.0,
              height: 50.0,
              color: color
            )
        ]
        ),
      ),
    );
  }

}