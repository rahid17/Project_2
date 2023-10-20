import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
primaryColor: Colors.blue,
appBarTheme: AppBarTheme(
  backgroundColor: Colors.greenAccent,
  titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
  

),
 scaffoldBackgroundColor: Colors.white,
 textTheme: TextTheme(
  headline1: TextStyle(color: Colors.black),
  headline2: TextStyle(color: Colors.black),
  bodyText2: TextStyle(color: Colors.black)
 ),
 elevatedButtonTheme: ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
   backgroundColor: Colors.greenAccent
  )
 )
);