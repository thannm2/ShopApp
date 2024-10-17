import 'package:get/get.dart';

double getProportionateScreenHeight(double inputHeight) => (inputHeight / 812.0) * Get.height;
double getProportionateScreenWidth(double inputWidth) => (inputWidth / 812.0) * Get.width;
