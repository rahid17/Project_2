import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
primaryColor: Colors.white,
appBarTheme: AppBarTheme(
  backgroundColor: const Color.fromARGB(255, 43, 43, 43),
  titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
  
  

),
 scaffoldBackgroundColor: Colors.black,

 
 textTheme: TextTheme(
  headline1: TextStyle(color: Colors.white),
  headline2: TextStyle(color: Colors.white),
  bodyText2: TextStyle(color: Colors.white)
 ),
 elevatedButtonTheme: ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
   backgroundColor: Colors.grey
  )
 ),
iconTheme: IconThemeData(
  color: Colors.white
)
);