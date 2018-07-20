import "package:flutter/material.dart";
import "package:odile/UI/ThemeBox.dart";

final _backgroundColor=Colors.lightBlueAccent;
final _appbarColor=Colors.blue;

class HomeRoute extends StatelessWidget{
  const HomeRoute();
  static const _categoryNames= <String>[
    'Sciences',
    'Voitures',
    'Sport',
    'Musique',
    'Cuisine',
    'Litterature'
  ];
  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
  ];
  static const _iconList = <IconData>[
    Icons.local_florist,
    Icons.directions_car,
    Icons.fitness_center,
    Icons.headset,
    Icons.cake,
    Icons.font_download,
  ];

  Widget _buildCategoryWidgets(List<Widget> categories) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => categories[index],
      itemCount: categories.length,
    );
/*    return GridView.builder(
        gridDelegate: ,
        itemBuilder: (BuildContext context, int index) => categories[index],
        itemCount: categories.length
    );*/
  }

  @override
  Widget build(BuildContext context) {
    final categories = <ThemeBox>[];

    for (var i = 0; i < _categoryNames.length; i++) {
      categories.add(ThemeBox(
        name: _categoryNames[i],
        color: _baseColors[i],
        iconLocation: _iconList[i],
      ));
    }

    final listView = Container(
          color: _backgroundColor,
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: _buildCategoryWidgets(categories),
        );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: _appbarColor,
        title: Row(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(left: 67.0)),
            Icon(Icons.question_answer),
            Text("Odile")
          ],
        ),
        leading: IconButton(
            icon: Icon(Icons.menu),
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
      ),
      body: listView,
    );
  }

}

