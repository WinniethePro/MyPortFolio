import 'package:flutter/material.dart';

class SeniorHigh extends StatelessWidget {
  const SeniorHigh({
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
              'High School (2018-2020)',
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
              'Makati Science\nHigh School\nSenior High',
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
          flex: 1,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'Achievement: With Honors for 2 years',
              overflow: TextOverflow.visible,
            ),
          ),
        ),
      ],
    );
  }
}
