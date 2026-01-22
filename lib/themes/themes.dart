import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  useMaterial3: false,
  colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 32, 101, 230)),
  textTheme: TextTheme(      
    bodyMedium: TextStyle(color: Colors.black),
    titleMedium: TextStyle(
      color: Colors.black, 
      fontSize: 20,
      fontWeight: FontWeight.bold,
      ),
  ),
);

final darkTheme = ThemeData.dark(
  useMaterial3: false
).copyWith(
  appBarTheme: AppBarTheme(
    backgroundColor: const Color.fromARGB(255, 32, 101, 230),
    // titleTextStyle: TextStyle(
    //   color: Colors.yellow,
    //   fontSize: 20,
    //   fontWeight: FontWeight.bold
    // ),
  ),
  iconTheme: IconThemeData(
    color: Colors.white
  ),
  primaryIconTheme: IconThemeData(
    color: Colors.white
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: 
      ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.green)),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.orange
  ),
);