import 'dart:html';

import 'package:flutter/material.dart';

class College extends StatelessWidget {
  const College({
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
              'College (2020-Present)',
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
              'Technological University of the \nPhilippines Manila\nBS Computer Science',
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
              'Achievement: Dean\'s Lister on First Year',
              overflow: TextOverflow.visible,
            ),
          ),
        ),
      ],
    );
  }
}
