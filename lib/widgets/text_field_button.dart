import 'package:flutter/material.dart';

class TextFieldButton extends StatelessWidget {
  const TextFieldButton({
    super.key,
    required this.description,
    required this.placeholder,
  });

  final String description;
  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          description,
          textAlign: TextAlign.left,
          style: const TextStyle(
              fontFamily: "SF Pro Display",
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: placeholder,
            labelStyle: const TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
          ),
        ),
      ],
    );
  }
}
