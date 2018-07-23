import 'package:flutter/material.dart';

final _rowHeight=50.0;
final _borderRadius=BorderRadius.circular(_rowHeight/4.5);

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



class KeyWordBox extends StatelessWidget{
  final String name;
  const KeyWordBox({Key key, @required this.name}) :
      assert(name!=null);


  @override
  Widget build(BuildContext context) {
    print(name);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 10.0,
        borderRadius: _borderRadius,
        child: Container(
          height: _rowHeight,
          child: InkWell(
            borderRadius: _borderRadius,
            onTap: () {
              print("koukou");
            },
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  name,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

}