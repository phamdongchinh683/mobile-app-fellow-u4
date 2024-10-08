import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });
  final String description;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 252,
      height: 73,
      child: Text(description,
          textAlign: TextAlign.start,
          style: const TextStyle(
              fontFamily: "SF Pro Display",
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(85, 85, 85, 1))),
    );
  }
}
