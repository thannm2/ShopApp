import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:name_project/constands.dart';
import 'package:name_project/size_config.dart';
import '../components/splash_content.dart';
import '../components/defaultButton.dart';

class Body extends StatefulWidget {
   Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int curentPage = 0;
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
                onPageChanged: (value){
                  setState(() {
                    curentPage = value;
                  });
                },
                itemCount: splashData.length,
                controller: PageController(initialPage: 0, keepPage: true, viewportFraction: 1),
                itemBuilder:(context, index) => SplashContent(
                  image: splashData[index]["image"]??"",
                  text:splashData[index]["text"]??"",
                ),
              )
            ),
              Expanded(
              flex: 2,
              child: Padding(
                padding:  EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                ),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                            (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 3),
                    DefaultButton(
                      text: "Tiếp tục",
                      press: () {},
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: curentPage == index ? 20 : 6,
      decoration:  BoxDecoration(
        color: curentPage == index ? kPrimaryColor: Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}


class SplashContent extends StatelessWidget {
   SplashContent({
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
               Spacer(flex: 3,),
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
               Spacer(flex: 2,),
              Image.asset(
                image,
                height: getProportionateScreenHeight(200),
                width: getProportionateScreenWidth(200),
              )
            ],
          ),
        ),
         Expanded(
          flex: 2,
          child: SizedBox(),
        ),
      ],
    );
  }
}




