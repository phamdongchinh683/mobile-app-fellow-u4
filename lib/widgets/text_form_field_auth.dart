import 'package:flutter/material.dart';

class TextFormFieldAuth extends StatelessWidget {
  const TextFormFieldAuth({
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
        Text(description,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            )),
        TextFormField(
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            hintText: placeholder,
            hintStyle: const TextStyle(color: Color.fromRGBO(153, 153, 153, 1)),
          ),
        ),
      ],
    );
  }
}
