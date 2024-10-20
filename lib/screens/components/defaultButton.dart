import 'package:flutter/material.dart';
import '../../constands.dart';
import '../../size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key, required this.text, required this.press,
  });
  final String text;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenWidth(100),
      child: ElevatedButton(
          onPressed: press,
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: kPrimaryColor, // foreground
          ),
          child: Text(
            "Tiếp tục",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(20),
              color: Colors.white,
            ),
          )
      ),
    );
  }
}