import 'package:flutter/material.dart';
import 'package:name_project/constands.dart';
import 'package:name_project/size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> splashData = [
    {
      "text":"Welcome to TOKYO",
      "image":"assets/images/login_light.png"
    },
    {
      "text":"Welcome to TOKYO2",
      "image":"assets/images/signUp_dark.png"
    },
    {
      "text":"Welcome to TOKYO3",
      "image":"assets/images/signUp_dark.png"
    },
  ];
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
                itemCount: splashData.length,
                controller: PageController(initialPage: 0, keepPage: true, viewportFraction: 1),
                itemBuilder:(context, index) => SplashContent(
                  image: splashData[index]["image"]??"",
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
                    fontSize: getProportionateScreenWidth(50),
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  )
              ),
               Text(text),
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




