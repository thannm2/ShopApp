import 'package:flutter/material.dart';
import '../../constands.dart';
import '../../size_config.dart';


class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key,
    required this.text,
    required this.image
  });
  final String text,image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Column(
            children: <Widget>[
              const Spacer(flex: 3,),
              Text("TOKYO",
                  style:TextStyle(
                    fontSize: getProportionateScreenWidth(50),
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  )
              ),
              Text(
                text,
                textAlign: TextAlign.center,
              ),
              const Spacer(flex: 2,),
              Image.asset(
                image,
                height: getProportionateScreenHeight(200),
                width: getProportionateScreenWidth(200),
              )
            ],
          ),
        ),
        const Expanded(
          flex: 2,
          child: SizedBox(),
        ),
      ],
    );
  }
}