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
    visualDensity: VisualDensity.adaptivePlatformDensity,
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