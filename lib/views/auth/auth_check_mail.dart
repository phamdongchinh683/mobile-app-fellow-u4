import 'package:flutter/material.dart';
import 'package:flutter_mobile_app/views/auth/background_auth.dart';
import 'package:flutter_mobile_app/widgets/text_section.dart';
import 'package:flutter_svg/svg.dart';

class AuthCheckMail extends StatefulWidget {
  const AuthCheckMail({super.key});

  @override
  _AuthCheckMailState createState() => _AuthCheckMailState();
}

class _AuthCheckMailState extends State<AuthCheckMail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: BackgroundAuth(
      widgetAuth: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        "Check Email",
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 28),
                      const TextSection(
                        description:
                            "Input your email, we will send you an instruction to reset your password.",
                      ),
                      const SizedBox(height: 39),
                      SvgPicture.asset("assets/icons/box_email.svg",
                          fit: BoxFit.fill),
                    ])),
            const SizedBox(height: 123),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Back to ",
                  style: TextStyle(
                    color: Color.fromRGBO(117, 117, 117, 1),
                  ),
                ),
                Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    )));
  }
}
