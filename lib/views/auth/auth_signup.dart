import 'package:flutter/material.dart';
import 'package:flutter_mobile_app/views/auth/background_auth.dart';
import 'package:flutter_mobile_app/widgets/button_auth.dart';
import 'package:flutter_mobile_app/widgets/radio_auth.dart';
import 'package:flutter_mobile_app/widgets/text_field_button.dart';
import 'package:flutter_mobile_app/widgets/text_form_field_auth.dart';

class AuthSignup extends StatelessWidget {
  const AuthSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
            child: BackgroundAuth(
      widgetAuth: Padding(
        padding: const EdgeInsets.all(32),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20),
              const Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 30),
              const RadioAuth(),
              const SizedBox(height: 22),
              Row(
                children: const <Widget>[
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
              const SizedBox(height: 21),
              const TextFormFieldAuth(
                description: "Country",
                placeholder: "Country",
              ),
              const SizedBox(height: 21),
              const TextFormFieldAuth(
                description: "Email",
                placeholder: "joinwick@gmail.com",
              ),
              const SizedBox(height: 21),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
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
              const SizedBox(height: 21),
              const TextFieldButton(
                description: "Confirm Password",
                placeholder: "Confirm Password",
              ),
              const SizedBox(height: 24),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "By Signing Up, you agree to our ",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(117, 117, 117, 1),
                    ),
                  ),
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
              const SizedBox(height: 24),
              const ButtonAuth(
                enabled: true,
                value: "SIGN UP",
                backgroundColor: Color.fromARGB(255, 217, 11, 104),
              ),
              const SizedBox(height: 24),
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
    )));
  }
}
