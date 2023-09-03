import 'package:flutter/material.dart';

class AppTheme {
  static const Color cinzaClaro = Color.fromARGB(255, 247, 247, 247);
  static const Color verdeAgua = Color.fromARGB(255, 8, 149, 164);
  static const Color vermelhinho = Color.fromARGB(255, 255, 102, 90);

  static const Color dourado = Color.fromARGB(255, 242, 209, 24);
  static const Color marromClaro = Color.fromARGB(255, 176, 45, 10);
  static const Color areia = Color.fromARGB(255, 254, 255, 212);
  static const Color verdeClaro = Color.fromARGB(255, 163, 202, 80);
  static const Color primary = verdeAgua;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Cor primária
    primaryColor: verdeAgua,
    scaffoldBackgroundColor: Colors.white,

    //AppBar
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 2,
      titleTextStyle: TextStyle(color: cinzaClaro),
    ),
    //Bottom
    bottomAppBarTheme: const BottomAppBarTheme(
      color: primary,
      elevation: 2,
    ),
    //TextButton
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(backgroundColor: primary)),

    //Floating Action Button
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: primary,
      floatingLabelStyle: TextStyle(color: Colors.black),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: cinzaClaro),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: cinzaClaro),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
    ),
  );
  static final ThemeData darkTheme = ThemeData.dark().copyWith(

      // Cor primária
      primaryColor: primary,

      //AppBar
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ),
      scaffoldBackgroundColor: Colors.black);
}
