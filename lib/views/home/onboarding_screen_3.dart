import 'package:flutter/material.dart';
import 'package:flutter_mobile_app/widgets/button_auth.dart';
import 'package:flutter_mobile_app/widgets/text_section.dart';
import 'package:flutter_mobile_app/widgets/title_section.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreen3 extends StatefulWidget {
  const OnboardingScreen3({super.key});

  @override
  _OnboardingScreen3State createState() => _OnboardingScreen3State();
}

class _OnboardingScreen3State extends State<OnboardingScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              "assets/images/onboarding3.svg",
              width: 300,
              height: 423,
            ),
            const TitleSection(title: "Create a trip and get offers"),
            const TextSection(
              description:
                  "Fellow4U helps you save time and get offers from hundreds of local guides that suit your trip.",
            ),
            const SizedBox(height: 25),
            const ButtonAuth(
              enabled: true,
              value: "GET STARTED",
              backgroundColor: Color.fromARGB(0, 217, 11, 104),
            ),
          ],
        ),
      ),
    );
  }
}
