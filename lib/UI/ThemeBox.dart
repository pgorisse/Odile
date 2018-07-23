import "package:flutter/material.dart";
import "package:odile/Pages/ThemePage.dart";
import "package:odile/Subject.dart";


final _rowHeight=70.0;
final _borderRadius=BorderRadius.circular(_rowHeight/4.5);

class ThemeBox extends StatelessWidget{
  final String name;
  final ColorSwatch color;
  final IconData iconLocation;

  const ThemeBox({Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
  })  : assert(name != null),
        assert(color != null),
        assert(iconLocation != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 10.0,
        borderRadius: _borderRadius,
        child: Container(
          height: _rowHeight,
          child: InkWell(
            borderRadius: _borderRadius,
            highlightColor: color,
            splashColor: color,
            // We can use either the () => function() or the () { function(); }
            // syntax.
            onTap: () {
              /*print('I was tapped!');
              _navigateToTheme(context);*/
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ThemePage(subject: Subject(title: name))
                  )
              );
            },
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                // There are two ways to denote a list: `[]` and `List()`.
                // Prefer to use the literal syntax, i.e. `[]`, instead of `List()`.
                // You can add the type argument if you'd like, i.e. <Widget>[].
                // See https://www.dartlang.org/guides/language/effective-dart/usage#do-use-collection-literals-when-possible
                children: [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Icon(
                      iconLocation,
                      size: 50.0,
                    ),
                  ),
                  Center(
                    child: Text(
                      name,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}