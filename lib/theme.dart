import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../constands.dart';
import '../../routs.dart';
import 'package:name_project/screens/splash_screen.dart';

ThemeData theme(){
  return ThemeData(
    scaffoldBackgroundColor:Colors.white,
    fontFamily: "GrandisExtended-Black",
    appBarTheme:  appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(

    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(
      horizontal: 42,
      vertical: 20,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: BorderSide(color: kTextColor),
      gapPadding: 10,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: BorderSide(color: kTextColor),
      gapPadding: 10,
    ),
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyMedium: TextStyle(color: kTextColor),
    bodySmall: TextStyle(color: kTextColor),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    iconTheme: IconThemeData(color: Colors.black),
  );
}