import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:name_project/constands.dart';
import 'package:name_project/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor:Colors.white,
        fontFamily: "GrandisExtended-Black",
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: kTextColor),
          bodySmall: TextStyle(color: kTextColor),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}