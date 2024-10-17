import 'package:flutter/material.dart';
import 'package:name_project/constands.dart';
import 'package:name_project/size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                itemBuilder:(context, index) => const SplashContent(
                  image:"assets/image/login_light.png",
                  text:"Welcome to TOKYO shop, Lest's go",
                ),
              )
            ),
            const Expanded(
              flex: 2,
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}

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
                    fontSize: getProportionateScreenWidth(36),
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  )
              ),
              const Text(text),
              const Spacer(flex: 2,),
              Image.asset(
                image,
                height: getProportionateScreenHeight(400),
                width: getProportionateScreenWidth(365),
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




