import 'package:flutter/material.dart';

final _backgroundColor=Colors.lightBlueAccent;
final _appbarColor=Colors.blue;

class appBar extends StatelessWidget{
  final bool _isHomePage;
  appBar(this._isHomePage);

  @override
  Widget build(BuildContext context) {
    final Icon _leading= _isHomePage==true ? Icon(Icons.menu) : null;
    return AppBar(
      backgroundColor: _appbarColor,
      title: Row(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(left: 67.0)),
        Icon(Icons.question_answer),
        Text("Odile")
      ],
    ),
      leading: IconButton(
        icon: _leading,
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
  }

}
