import 'package:flutter/material.dart';

class JuniorHigh extends StatelessWidget {
  const JuniorHigh({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'High School (2014-2018)',
              style: TextStyle(),
            ),
          ),
        ),
        Spacer(flex: 1),
        Expanded(
          flex: 3,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'General Pio del Pilar\nNational High School\nJunior High',
              overflow: TextOverflow.visible,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                // fontSize: 20,
              ),
            ),
          ),
        ),
        Spacer(flex: 1),
        Expanded(
          flex: 2,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'Achievement: Gold Medalist in International\n                         Mathematics Wizard Challenge 2015',
              overflow: TextOverflow.visible,
            ),
          ),
        ),
      ],
    );
  }
}
