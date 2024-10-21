import 'package:flutter/widgets.dart';
import 'package:name_project/screens/sign_in/sign_in_screen.dart';
import 'package:name_project/screens/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName:(context) => SplashScreen(),
  SignInScreen.routeName:(context) => SignInScreen(),
};

