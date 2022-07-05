import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Row(
          children: [
            Text("Proficient in: "),
            DefaultTextStyle(
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Horizon',
                fontWeight: FontWeight.bold,
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    "C",
                    speed: Duration(milliseconds: 200),
                  ),
                  TypewriterAnimatedText(
                    "C++",
                    speed: Duration(milliseconds: 200),
                  ),
                  TypewriterAnimatedText(
                    "Dart",
                    speed: Duration(milliseconds: 200),
                  ),
                  TypewriterAnimatedText(
                    "HTML",
                    speed: Duration(milliseconds: 200),
                  ),
                  TypewriterAnimatedText(
                    "Python",
                    speed: Duration(milliseconds: 200),
                  ),
                ],
                isRepeatingAnimation: true,
                totalRepeatCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
