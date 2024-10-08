import 'package:flutter/material.dart';

enum SingingCharacter { Traveler, Guide }

class RadioAuth extends StatefulWidget {
  const RadioAuth({super.key});

  @override
  State<RadioAuth> createState() => _RadioAuthState();
}

class _RadioAuthState extends State<RadioAuth> {
  SingingCharacter? _character = SingingCharacter.Traveler;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Radio<SingingCharacter>(
                    value: SingingCharacter.Traveler,
                    groupValue: _character,
                    fillColor: MaterialStateProperty.resolveWith<Color?>(
                      (states) {
                        if (states.contains(MaterialState.selected)) {
                          return const Color.fromRGBO(0, 206, 166, 1);
                        }
                        return Colors.grey;
                      },
                    ),
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                  const Expanded(
                    child: Text(
                      'Traveler',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Radio<SingingCharacter>(
                    value: SingingCharacter.Guide,
                    groupValue: _character,
                    fillColor: MaterialStateProperty.resolveWith<Color?>(
                      (states) {
                        if (states.contains(MaterialState.selected)) {
                          return const Color.fromRGBO(0, 206, 166, 1);
                        }
                        return Colors.grey;
                      },
                    ),
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                  const Expanded(
                    child: Text(
                      'Guide',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              flex: 1,
            ),
          ],
        ),
      ],
    );
  }
}
