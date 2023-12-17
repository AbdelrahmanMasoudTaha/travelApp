import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel/pages/components/app_text.dart';
import 'package:travel/pages/components/responsive_bottom.dart';
import 'package:travel/pages/shared/colors.dart';

class WelcomePageState extends StatefulWidget {
  const WelcomePageState({super.key});

  @override
  State<WelcomePageState> createState() => _WelcomePageStateState();
}

class _WelcomePageStateState extends State<WelcomePageState> {
  @override
  List images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",
  ];
  List qoutes = [
    "We live in a wonderful world that is full of beauty, charm and adventure. There is no end to the adventures we can have if only we seek them with our eyes open.",
    "Traveling – it leaves you speechless, then turns you into a storyteller.",
    "The most beautiful in the world is, of course, the world itself.",
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('img/' + images[index]))),
              child: Container(
                margin: EdgeInsets.only(top: 150, right: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //
                      children: [
                        MyBoldText(
                          text: "Travel",
                          size: 30,
                        ),
                        MyText(
                          text: "Mountain",
                          size: 30,
                          color: AppColors.textColor2,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          width: 250,
                          child: MyText(
                            text: qoutes[index],
                            size: 15,
                            color: AppColors.textColor2,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        MyResBottom(),
                      ],
                    ),
                    Column(
                      children: List.generate(3, (dotsIndex) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 3),
                          width: 8,
                          height: index == dotsIndex ? 20 : 8,
                          decoration: BoxDecoration(
                            color: index == dotsIndex
                                ? AppColors.mainColor
                                : AppColors.mainColor.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
