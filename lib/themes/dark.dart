import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
primaryColor: Colors.white,
appBarTheme: AppBarTheme(
  backgroundColor: Colors.black,
  titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
  

),
 scaffoldBackgroundColor: Color.fromARGB(255, 24, 23, 23),
 textTheme: TextTheme(
  headline1: TextStyle(color: Colors.white),
  headline2: TextStyle(color: Colors.white),
  bodyText2: TextStyle(color: Colors.white)
 ),
 elevatedButtonTheme: ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
   backgroundColor: Colors.black
  )
 )
);