class Subject {
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
  static String _name;
  List<String> _keyWords;
  Subject(String name){
    _name=name;
    print(_name);
    assert (_categoryNames.contains(_name));
    this._keyWords=_categoryWords[_categoryNames.indexOf(_name)];
  }
  String get name => _name;

}