import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 23, 0, 19),
        child: Text(
          title,
          style: const TextStyle(
              fontFamily: "SF Pro Display",
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Color(0xFF000000)),
        ));
  }
}
