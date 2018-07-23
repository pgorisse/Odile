import 'package:flutter/material.dart';

class Subject {

  final String title;
  final List<String> _keyWords;
/*  Subject(String name){
    title=name;
    assert (_categoryNames.contains(title));
    this._keyWords=_categoryWords[_categoryNames.indexOf(title)];
    print("Subject created, name: "+this.name);
  }
  String get name => title;*/

  Subject({@required this.title}) ;
//  Subject(@required title){
//    assert (_categoryNames.contains(title));
//    this._keyWords=_categoryWords[_categoryNames.indexOf(title)];
// }
}