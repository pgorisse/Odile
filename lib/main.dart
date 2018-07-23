import "package:flutter/material.dart";
import "package:odile/Pages/HomeRoute.dart";
import 'package:odile/Pages/ThemePage.dart';
import 'package:odile/Subject.dart';

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
    );
  }

}
