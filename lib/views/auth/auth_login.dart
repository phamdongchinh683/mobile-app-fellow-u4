import 'package:flutter/material.dart';
import 'package:flutter_mobile_app/views/auth/background_auth.dart';
import 'package:flutter_mobile_app/widgets/button_auth.dart';
import 'package:flutter_mobile_app/widgets/text_field_button.dart';
import 'package:flutter_mobile_app/widgets/text_form_field_auth.dart';
import 'package:flutter_svg/svg.dart';

class AuthLogin extends StatefulWidget {
  const AuthLogin({super.key});

  @override
  _AuthLoginState createState() => _AuthLoginState();
}

class CustomScrollView extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class _AuthLoginState extends State<AuthLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: BackgroundAuth(
                widgetAuth: Padding(
                    padding: const EdgeInsets.all(0),
                    child: ScrollConfiguration(
                      behavior: CustomScrollView(),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const Padding(
                              // padding: EdgeInsets.all(0),
                              padding: EdgeInsets.fromLTRB(32, 48, 32, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Sign In",
                                    style: TextStyle(
                                      fontSize: 34,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 23),
                                  Text(
                                    "Welcome back, Yoo Jin",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(0, 206, 166, 1)),
                                  ),
                                  SizedBox(height: 38),
                                  TextFormFieldAuth(
                                    description: "Email",
                                    placeholder: "chinh@gmail.com",
                                  ),
                                  SizedBox(height: 24),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      TextFieldButton(
                                        description: "Password",
                                        placeholder: "Password",
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 15),
                                  Text(
                                    "Forgot Password",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 24),
                            const ButtonAuth(
                              enabled: true,
                              value: "SIGN IN",
                              backgroundColor: Color.fromARGB(0, 217, 11, 104),
                            ),
                            const SizedBox(height: 44),
                            const Text(
                              "or sign in with",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(height: 19),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.asset("assets/icons/facebook.svg"),
                                SizedBox(width: 20),
                                SvgPicture.asset("assets/icons/talk.svg"),
                                SizedBox(width: 20),
                                SvgPicture.asset("assets/icons/line.svg"),
                              ],
                            ),
                            const SizedBox(height: 19),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Don't have an account? ",
                                  style: TextStyle(
                                    color: Color.fromRGBO(117, 117, 117, 1),
                                  ),
                                ),
                                Text(
                                  "Sign Up",
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
                    )))));
  }
}
