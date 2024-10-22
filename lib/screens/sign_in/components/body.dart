import 'package:flutter/material.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Text(
                  "Chào mừng trở lại",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Đăng nhập bằng email hoặc số điện thoại",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
        ),
    );
  }
}
