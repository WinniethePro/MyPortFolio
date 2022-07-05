import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/about_me_screen.dart';
import 'package:flutter_profile/screens/main/education_screen.dart';
import 'package:flutter_profile/screens/main/main_screen.dart';
import 'package:flutter_profile/screens/main/project_screen.dart';
import 'package:flutter_profile/screens/main/text_style.dart';

class AppBarContent extends StatelessWidget {
  const AppBarContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => MainScreen()));
          },
          child: TxtStyle(
            label: "Home",
            fontSize: barFontSize,
            fontColor: barFontColor,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => AboutMeScreen()));
          },
          child: TxtStyle(
            label: "About Me",
            fontSize: barFontSize,
            fontColor: barFontColor,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ProjectScreen()));
          },
          child: TxtStyle(
            label: "Project",
            fontSize: barFontSize,
            fontColor: barFontColor,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => EducationScreen()));
          },
          child: TxtStyle(
            label: "Education",
            fontSize: barFontSize,
            fontColor: barFontColor,
          ),
        ),
      ],
    );
  }
}
