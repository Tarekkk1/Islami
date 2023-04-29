import 'package:flutter/material.dart';

class MyTheame {
  static const Color lightColor=Color(0xFFB7935F);

  static ThemeData lightTheame = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: lightColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
backgroundColor:lightColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
      ),
      textTheme: TextTheme(
          bodySmall: TextStyle(
              fontSize: 40, fontWeight: FontWeight.bold, color: lightColor),
          bodyMedium: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w200,
          )),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: lightColor,
            size: 35
          ),
          centerTitle: true));
  static ThemeData darkTheme = ThemeData(
      appBarTheme:
          AppBarTheme(backgroundColor: Colors.transparent, elevation: 0.0));
}
