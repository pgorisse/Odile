class Theme {
  static const _categoryNames= <String>[
    'Sciences',
    'Voitures',
    'Sport',
    'Musique',
    'Cuisine',
    'Litterature'
  ];
  static const _categoryWords= <List<String>>[
    ['Maths','Physique'],
    ['cuir','cuir','moustache'],
    ['Coupe du monde','on est champions','Mbappe'],
    ['despacito','Techno','Rock'],
    ['Steak-Frite','Pates','coin cannibales'],
    ['Freud', 'Poésie', 'Philosophie']
  ];
  final String _name;
  List<String> _keyWords;
  Theme(this._name){
    assert (_categoryNames.contains(this._name));
    this._keyWords=_categoryWords[_categoryNames.indexOf(this._name)];
  }

}