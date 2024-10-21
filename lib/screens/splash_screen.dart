import 'package:flutter/material.dart';
import 'package:name_project/screens/components/body.dart';
import 'package:name_project/size_config.dart';

class SplashScreen extends StatelessWidget{
  static String routeName = "screens/components";
  @override
  Widget build (BuildContext context){
     SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}

class SizeConfig {
  void init(BuildContext context) {}
}