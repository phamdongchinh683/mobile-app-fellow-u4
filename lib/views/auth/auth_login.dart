import 'package:flutter/material.dart';
import 'package:flutter_mobile_app/widgets/button_auth.dart';
import 'package:flutter_mobile_app/widgets/text_field_button.dart';
import 'package:flutter_mobile_app/widgets/text_form_field_auth.dart';
import 'package:flutter_svg/svg.dart';

class AuthLogin extends StatelessWidget {
  const AuthLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset("assets/images/header_auth.svg"),
              const Padding(
                padding: EdgeInsets.fromLTRB(58, 0, 58, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 20),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    // RadioAuth(),
                    SizedBox(height: 36),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: TextFormFieldAuth(
                            description: "First Name",
                            placeholder: "First Name",
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: TextFormFieldAuth(
                            description: "Last Name",
                            placeholder: "Last Name",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 21),
                    TextFormFieldAuth(
                      description: "Country",
                      placeholder: "Country",
                    ),
                    SizedBox(height: 21),
                    TextFormFieldAuth(
                      description: "Email",
                      placeholder: "joinwick@gmail.com",
                    ),
                    SizedBox(height: 21),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextFieldButton(
                          description: "Password",
                          placeholder: "Password",
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Password must be more than 6 letters",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(height: 21),
                    TextFieldButton(
                      description: "Confirm Password",
                      placeholder: "Confirm Password",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("By Signing Up, you agree to our ",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(117, 117, 117, 1))),
                  Text(
                    "Terms & Conditions",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const ButtonAuth(
                enabled: true,
                value: "SIGN UP",
                backgroundColor: Color.fromARGB(0, 217, 11, 104),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Already have an account? ",
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
      ),
    ));
  }
}
