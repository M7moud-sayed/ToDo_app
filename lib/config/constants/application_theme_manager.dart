import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const Color primaryColor = Color(0xFF5D9CEC);
  static ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: const Color(0xFFDFECDB),
      bottomAppBarTheme: const BottomAppBarTheme(
        padding: EdgeInsets.zero,
        color: Colors.white,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: const BorderSide(color: Colors.white, width: 4),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        selectedItemColor: primaryColor,
        selectedIconTheme: IconThemeData(color: primaryColor, size: 34),
        showUnselectedLabels: false,
        unselectedIconTheme: IconThemeData(
          color: Color(0xFFC8C9CB),
          size: 30,
        ),
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
          fontFamily: "Poppins",
        ),
        bodyLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          fontFamily: "Poppins",
        ),
        bodyMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.normal,
          fontFamily: "Poppins",
        ),
        bodySmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          fontFamily: "Poppins",
        ),
        displayLarge: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          fontFamily: "Poppins",
        ),
      ));







  static ThemeData darkTheme = ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: const Color(0xFF060E1E),
      bottomAppBarTheme: const BottomAppBarTheme(
        padding: EdgeInsets.zero,
        color: Color(0xFF141922),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: const BorderSide(color: Colors.white, width: 4),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        selectedItemColor: primaryColor,
        selectedIconTheme: IconThemeData(color: primaryColor, size: 38),
        showUnselectedLabels: false,
        unselectedIconTheme: IconThemeData(
          color: Color(0xFFC8C9CB),
          size: 30,
        ),
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
          fontFamily: "Poppins",
          color: Colors.white,
        ),
        bodyLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          fontFamily: "Poppins",
          color: Colors.white,
        ),
        bodyMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: "Poppins",
          color: Colors.white,
        ),
        bodySmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          fontFamily: "Poppins",
          color: Colors.white,
        ),
        displayLarge: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          fontFamily: "Poppins",
          color: Colors.white,
        ),
      ));
}
