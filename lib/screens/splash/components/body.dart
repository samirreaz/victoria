import 'package:flutter/material.dart';
import 'package:victoria/constants.dart';
import 'package:victoria/size_config.dart';

import '../../../components/default_button.dart';
import 'splash_content.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, dynamic>> splashData = [
    {
      "image": "assets/images/splash_1.png",
      "text": "Victoria",
    },
    {
      "image": "assets/images/splash_2.png",
      "text":
          "Here's a program to draw a spiral, but the blocks are disabled so they won't run.",
    },
    {
      "image": "assets/images/splash_3.png",
      "text": "Victoria",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: PageView.builder(
            onPageChanged: (value) {
              setState(() {
                currentPage = value;
              });
            },
            itemCount: splashData.length,
            itemBuilder: (context, index) => SplashContent(
              text: splashData[index]["text"],
              image: splashData[index]["image"],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Column(
              children: [
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      splashData.length, (index) => buildDot(index: index)),
                ),
                const Spacer(
                  flex: 3,
                ),
                DefaultButton(
                  press: () {},
                  text: 'Continue',
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
      duration: kAnimationDuration,
    );
  }
}
