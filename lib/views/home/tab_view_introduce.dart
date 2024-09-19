import 'package:flutter/material.dart';
import 'package:flutter_mobile_app/views/home/onboarding_screen_1.dart';
import 'package:flutter_mobile_app/views/home/onboarding_screen_2.dart';
import 'package:flutter_mobile_app/views/home/onboarding_screen_3.dart';

class TabViewIntroduce extends StatelessWidget {
  const TabViewIntroduce({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        body: TabBarView(
          children: <Widget>[
            OnboardingScreen1(),
            OnboardingScreen2(),
            OnboardingScreen3()
          ],
        ),
      ),
    );
  }
}
