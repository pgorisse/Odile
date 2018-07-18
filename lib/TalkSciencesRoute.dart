import 'package:flutter/material.dart';

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


class TalkSciencesRoute extends StatelessWidget{
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
      /*leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print("I was tapped");
          }
      ),*/
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
    final body = Center(
      child: Container(
        height: 200.0,
        width: 200.0,
        color: _backgroundColor,
        padding: EdgeInsets.symmetric(horizontal: 70.0,vertical: 70.0),
        child: Text("Wanna talk science?")
      ),
    );
    final chatbody = Container(
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Start typing!',
          icon: Icon(Icons.question_answer),
          suffixIcon: IconButton(
              icon: Icon(Icons.send),
              onPressed: () {
                print("I was tapped!");
              }
          )
        ),
      ),
    );
    return Scaffold(
      appBar: appBar,
      body: chatbody,
    );
  }

  /*@override
  State<StatefulWidget> createState() => _talkScienceState();*/

}

/*class _talkScienceState extends State<TalkSciencesRoute>{
  var color=Colors.amber;

  static Color _generateRandomColor(){
    return _baseColors[3];
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          onPressed: (){
            print ("i was tapped!");
            color=Colors.blue;
          },
          child: null
      ),
    );
  }

}*/
