import "package:flutter/material.dart";
import "package:odile/HomeRoute.dart";
import "package:odile/TalkSciencesRoute.dart";
import "package:odile/TalkVoituresRoute.dart";
import "package:odile/TalkSportRoute.dart";
import "package:odile/TalkMusiqueRoute.dart";
import "package:odile/TalkCuisineRoute.dart";
import "package:odile/TalkLitteratureRoute.dart";

void main(){
  runApp(OdileApp());
}

class OdileApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Odile',
      home: HomeRoute(),
      routes: <String, WidgetBuilder> {
        'TalkSciences': (BuildContext context) => TalkSciencesRoute(),
        'TalkVoitures': (BuildContext context) => TalkVoituresRoute(),
        'TalkSport': (BuildContext context) => TalkSportRoute(),
        'TalkMusique': (BuildContext context) => TalkMusiqueRoute(),
        'TalkCuisine': (BuildContext context) => TalkCuisineRoute(),
        'TalkLitterature': (BuildContext context) => TalkLitteratureRoute(),
      },
    );

  }

}