import "package:flutter/material.dart";
import "package:odile/Pages/HomeRoute.dart";
import "package:odile/Pages/TalkSciencesRoute.dart";
import "package:odile/Pages/TalkVoituresRoute.dart";
import "package:odile/Pages/TalkSportRoute.dart";
import "package:odile/Pages/TalkMusiqueRoute.dart";
import "package:odile/Pages/TalkCuisineRoute.dart";
import "package:odile/Pages/TalkLitteratureRoute.dart";
import 'Pages/ThemePage.dart';
import 'Subject.dart';

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
        'ThemePageRoute': (BuildContext context) => ThemePage(new Subject("Sciences")),
      },
    );

  }

}