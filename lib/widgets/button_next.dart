import 'package:flutter/material.dart';

class ButtonNext extends StatelessWidget {
  const ButtonNext({super.key, required this.enabled});

  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final VoidCallback? onPressed = enabled ? () {} : null;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: <Widget>[
          TextButton(
            onPressed: onPressed,
            child: const Text(
              'SKIP',
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF777777),
                  fontWeight: FontWeight.w600,
                  fontFamily: "SF Pro Display"),
            ),
          ),
        ],
      ),
    );
  }
}
