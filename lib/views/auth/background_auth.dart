import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackgroundAuth extends StatelessWidget {
  const BackgroundAuth({super.key, required this.widgetAuth});
  final Widget widgetAuth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
            child: SvgPicture.asset("assets/images/background_auth.svg",
                fit: BoxFit.cover)),
        Positioned.fill(
          top: 130,
          child: SvgPicture.asset("assets/images/background_auth2.svg",
              fit: BoxFit.fill),
        ),
        Positioned.fill(top: 110, child: widgetAuth)
      ],
    );
  }
}
