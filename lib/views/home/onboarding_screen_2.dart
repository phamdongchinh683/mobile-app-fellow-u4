import 'package:flutter/material.dart';
import 'package:flutter_mobile_app/widgets/button_next.dart';
import 'package:flutter_mobile_app/widgets/text_section.dart';
import 'package:flutter_mobile_app/widgets/title_section.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreen2 extends StatefulWidget {
  const OnboardingScreen2({super.key});

  @override
  _OnboardingScreen2State createState() => _OnboardingScreen2State();
}

class _OnboardingScreen2State extends State<OnboardingScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            "assets/images/onboarding2.svg",
            width: 376,
            height: 423,
          ),
          const TitleSection(title: "Many tours around the world"),
          const TextSection(
            description:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.                   ",
          ),
          const Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            ButtonNext(
              enabled: true,
            )
          ])
        ],
      ),
    ));
  }
}
