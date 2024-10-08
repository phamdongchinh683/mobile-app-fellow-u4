import 'package:flutter/material.dart';

class ButtonAuth extends StatelessWidget {
  const ButtonAuth({
    super.key,
    required this.enabled,
    required this.value,
    required this.backgroundColor,
  });

  final bool enabled;
  final String value;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    final VoidCallback? onPressed = enabled ? () {} : null;

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 14.0, 0, 14.0),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.fromLTRB(128, 27.0, 128, 26.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
          backgroundColor: const Color.fromRGBO(0, 206, 166, 1),
          side: const BorderSide(color: Colors.transparent),
        ),
        onPressed: onPressed,
        child: Text(value,
            style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14.0,
                color: Color.fromRGBO(255, 255, 255, 1))),
      ),
    );
  }
}
