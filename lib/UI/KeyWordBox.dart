import 'package:flutter/material.dart';

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
    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Text(name),
      ),
    );
  }

}