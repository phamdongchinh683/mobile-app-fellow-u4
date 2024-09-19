import 'package:flutter/material.dart';
import 'package:flutter_mobile_app/widgets/button_next.dart';
import 'package:flutter_mobile_app/widgets/text_section.dart';
import 'package:flutter_mobile_app/widgets/title_section.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset("assets/images/onboarding1.svg"),
          const TitleSection(title: "Find a local guide easily"),
          const TextSection(
            description:
                "With Fellow4U, you can find a local guide for your trip easily and explore as the way you want.",
          ),
          const Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            ButtonNext(
              enabled: true,
            )
          ])
        ],
      ),
    );
  }
}
