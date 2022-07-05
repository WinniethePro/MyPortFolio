import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        aboutMeScript,
        overflow: TextOverflow.visible,
        style: TextStyle(
          fontSize: 50,
        ),
      ),
    );
  }
}
