import 'package:flutter/material.dart';
import 'package:furniture/screens/home_screen.dart';
import 'package:furniture/utils/color_util.dart';

void main() {
  runApp(FurnitureApp());
}

class FurnitureApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: _appTheme,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }

  final ThemeData _appTheme = ThemeData(
    primaryColor: HexColor("191B24"),
    primaryColorDark: HexColor("191B24"),
    accentColor: HexColor("191B24"),
    scaffoldBackgroundColor: HexColor("FFFFFF"),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: 'montserrat',
    textTheme: TextTheme(
      headline1: TextStyle(
          fontSize: 24,
          fontFamily: 'montserrat-medium',
          color: Colors.grey.shade800,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.0),
      bodyText1: TextStyle(
        fontSize: 14.0,
        color: Colors.white,
      ),
      bodyText2: TextStyle(
        fontSize: 14.0,
        color: HexColor("191B24"),
      ),
      headline2: TextStyle(
        fontSize: 15.0,
        color: HexColor("191B24"),
      ),
      headline4: TextStyle(
        fontSize: 14.0,
        color: Colors.grey.shade500,
      ),
      headline5: TextStyle(
        fontSize: 14.0,
        color: HexColor("191B24"),
      ),

    ),
  );
}
