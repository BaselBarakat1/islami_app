import 'package:flutter/material.dart';

class MyThemeData {
  static Color lightPrimaryColor = Color(0xffB7935F);
  static Color darkPrimaryColor =Color(0xff141A2E);
  static bool isDarkSelected = true ;
  static ThemeData lightTheme =ThemeData(
    dividerColor: lightPrimaryColor,
    cardColor: Color(0xffF8F8F8),
    primaryColor: lightPrimaryColor,
    textTheme: TextTheme(
      headlineMedium: TextStyle(fontWeight: FontWeight.w600,fontSize: 25,fontFamily: 'El Messiri',color: Colors.black) ,
      titleLarge: TextStyle(fontSize: 25,fontWeight: FontWeight.w400,fontFamily: 'El Messiri',color: Colors.black),
      titleMedium: TextStyle(fontSize: 25,fontWeight: FontWeight.w400,fontFamily: 'El Messiri',color: Colors.black) ,
      titleSmall: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),
      bodyMedium: TextStyle(fontSize: 24,fontWeight: FontWeight.w400,color: Colors.black),
      bodySmall: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: lightPrimaryColor),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 0,
      centerTitle: true,
      titleTextStyle:TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: Colors.black,
        fontFamily: 'El Messiri',
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(size: 40),
    ),
    dividerTheme: DividerThemeData(
      thickness: 3,
      color: Color(0xffB7935F),
    ),
    cardTheme: CardTheme(
      color: Color(0xfff8f8ba),
    ),
    iconTheme: IconThemeData(
        color: lightPrimaryColor
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.white
    ),
  ) ;

  static ThemeData darkTheme = ThemeData(
    dividerColor: Colors.yellow,
    cardColor: darkPrimaryColor,
    primaryColor: darkPrimaryColor,
    textTheme: TextTheme(
      headlineMedium: TextStyle(fontWeight: FontWeight.w600,fontSize: 25,fontFamily: 'El Messiri',color: Colors.white) ,
      titleLarge: TextStyle(fontSize: 25,fontWeight: FontWeight.w400,fontFamily: 'El Messiri',color: Colors.yellow),
      titleMedium: TextStyle(fontSize: 25,fontWeight: FontWeight.w400,fontFamily: 'El Messiri',color: Colors.white) ,
      titleSmall: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),
      bodyMedium: TextStyle(fontSize: 24,fontWeight: FontWeight.w400,color: Colors.yellow),
      bodySmall: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.yellow),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.white),
      elevation: 0,
      centerTitle: true,
      titleTextStyle:TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: Colors.white,
        fontFamily: 'El Messiri',
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.yellow,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(size: 40),
    ),
    dividerTheme: DividerThemeData(
      thickness: 3,
      color: Colors.yellow,
    ),
    cardTheme: CardTheme(
      color: darkPrimaryColor,
    ),
    iconTheme: IconThemeData(
        color: Colors.yellow
    ),
    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: darkPrimaryColor
    ),
  );
}