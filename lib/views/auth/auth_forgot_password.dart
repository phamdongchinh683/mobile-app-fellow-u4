import 'package:flutter/material.dart';
import 'package:flutter_mobile_app/views/auth/background_auth.dart';
import 'package:flutter_mobile_app/widgets/button_auth.dart';
import 'package:flutter_mobile_app/widgets/text_form_field_auth.dart';
import 'package:flutter_mobile_app/widgets/text_section.dart';

class AuthForgotPassword extends StatefulWidget {
  const AuthForgotPassword({super.key});

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<AuthForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
            child: BackgroundAuth(
                widgetAuth: Padding(
      padding: EdgeInsets.all(0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
                // padding: EdgeInsets.all(0),
                padding: EdgeInsets.fromLTRB(32, 48, 32, 0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Forgot Password",
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 28),
                      TextSection(
                        description:
                            "Input your email, we will send you an instruction to reset your password.",
                      ),
                      SizedBox(height: 23),
                      TextFormFieldAuth(
                        description: "Email",
                        placeholder: "chinh@gmail.com",
                      ),
                      SizedBox(height: 42),
                    ])),
            SizedBox(height: 24),
            ButtonAuth(
              enabled: true,
              value: "SEND",
              backgroundColor: Color.fromARGB(0, 217, 11, 104),
            ),
            SizedBox(height: 128),
            Row(
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
    ))));
  }
}
