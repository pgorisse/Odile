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
var _categoryWords= <List<String>>[
  ['Maths','Physique'],
  ['cuir','cuir','moustache'],
  ['Coupe du monde','on est champions','Mbappe'],
  ['despacito','Techno','Rock'],
  ['Steak-Frite','Pates','coin cannibales'],
  ['Freud', 'Poésie', 'Philosophie']
];


class ThemePage extends StatefulWidget{
  final Subject subject;

  ThemePage({Key key, @required this.subject}): super(key:key);

  @override
  _ThemePageState createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {

  final myController = TextEditingController();
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

  _showDialog() async {
    await showDialog<String>(
      context: context,
      child: new AlertDialog(
        contentPadding: const EdgeInsets.all(16.0),
        content: new Row(
          children: <Widget>[
            new Expanded(
              child: new TextField(
                controller: myController,
                autofocus: true,
                decoration: new InputDecoration(
                    labelText: 'Ajouter un mot-clé', hintText: 'Votre mot-clé'),
              ),
            )
          ],
        ),
        actions: <Widget>[
          new FlatButton(
              child: const Text('Annuler'),
              onPressed: () {
                Navigator.pop(context);
              }),
          new FlatButton(
              child: const Text('Ajouter'),
              onPressed: () {
                addKeyWord(myController.text);
                Navigator.pop(context);
              })
        ],
      ),
    );
  }

  void addKeyWord(String keyWord) {
    if(keyWord==null || keyWord.length >=30 || keyWord=="") {
      return null;
    }
    _categoryWords[_categoryNames.indexOf(widget.subject.title)].add(keyWord);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    assert (_categoryNames.contains(widget.subject.title));
    final List<String> _keyWords = _categoryWords[_categoryNames.indexOf(
        widget.subject.title)];
    final keyWordBoxes = <KeyWordBox>[];
    for (var i = 0; i < _keyWords.length; i++) {
      keyWordBoxes.add(KeyWordBox(name: _keyWords[i]));
    }
    final listView = Container(
      color: _backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: _buildCategoryWidgets(keyWordBoxes),
    );

    final bottomAppBar = BottomAppBar(
      elevation: 10.0,
      hasNotch: true,
      color: _appbarColor,
      child: Row(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 55.0, vertical: 20.0)),
          Text(
            "Ajoutez votre mot-clé:",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
                elevation: 10.0,
                mini: true,
                backgroundColor: Colors.yellow,
                onPressed: _showDialog,
                child: Icon(Icons.add)
            ),
          ),
        ],
      ),
    );
    return new Scaffold(
      appBar: appBar,
      body: listView,
      bottomNavigationBar: bottomAppBar,
    );
  }

  Widget _buildCategoryWidgets(List<Widget> categories) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => categories[index],
      itemCount: categories.length,
    );
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    myController.dispose();
    super.dispose();
  }
}