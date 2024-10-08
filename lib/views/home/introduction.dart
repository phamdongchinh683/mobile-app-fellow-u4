import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset("assets/images/splash.svg"),
      ),
    );
  }
}
