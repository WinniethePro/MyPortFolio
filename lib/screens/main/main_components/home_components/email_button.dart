import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:url_launcher/link.dart';

class AnimatedEmailButton extends StatelessWidget {
  const AnimatedEmailButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(color: bgColor, boxShadow: [
        BoxShadow(
            color: Colors.grey.shade500,
            offset: Offset(4.0, 4.0),
            blurRadius: 15.0,
            spreadRadius: 1.0),
        BoxShadow(
            color: Colors.white,
            offset: Offset(-4.0, -4.0),
            blurRadius: 15.0,
            spreadRadius: 1.0),
      ]),
      child: Link(
        target: LinkTarget.blank,
        uri: Uri.parse(
            'https://mail.google.com/mail/?view=cm&fs=1&to=tjesperchris1104@gmail.com&su=FLUTTER&body=RESPONSIVE'),
        builder: (context, followLink) => ElevatedButton(
          onPressed: followLink,
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(5),
            backgroundColor: bgColor,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.arrow_downward_rounded,
                color: darkColor,
              ),
              AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText("Email Me Here",
                      textStyle: TextStyle(
                        color: darkColor,
                      )),
                ],
                isRepeatingAnimation: true,
                totalRepeatCount: 10,
                pause: Duration(milliseconds: 2000),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
