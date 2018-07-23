import 'package:flutter/material.dart';
import 'package:odile/Subject.dart';
import 'package:odile/UI/KeyWordBox.dart';

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

const _categoryNames= <String>[
  'Sciences',
  'Voitures',
  'Sport',
  'Musique',
  'Cuisine',
  'Litterature'
];
const _categoryWords= <List<String>>[
  ['Maths','Physique'],
  ['cuir','cuir','moustache'],
  ['Coupe du monde','on est champions','Mbappe'],
  ['despacito','Techno','Rock'],
  ['Steak-Frite','Pates','coin cannibales'],
  ['Freud', 'Poésie', 'Philosophie']
];


class ThemePage extends StatelessWidget{
  final Subject subject;

  ThemePage({Key key, @required this.subject}): super(key:key);

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

  @override
  Widget build(BuildContext context) {
    assert (_categoryNames.contains(subject.title));
    final List<String> _keyWords = _categoryWords[_categoryNames.indexOf(subject.title)];
    final keyWordBoxes = <KeyWordBox>[];
    for(var i=0; i<_keyWords.length; i++){
      keyWordBoxes.add(KeyWordBox(name: _keyWords[i]));
    }
    final body= Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(subject.title),
            Text(_keyWords[1])
          ],
        ),
      ),
    );
    final listView = Container(
      color: _backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: _buildCategoryWidgets(keyWordBoxes),
    );
    return new Scaffold(
      appBar: appBar,
      body: listView,
    );
  }

  Widget _buildCategoryWidgets(List<Widget> categories) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => categories[index],
      itemCount: categories.length,
    );
  }

}