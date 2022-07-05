import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/about_me_components/about_me.dart';
import 'package:flutter_profile/screens/main/about_me_components/hello_there.dart';

class MobileAboutContent extends StatelessWidget {
  const MobileAboutContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(padding: const EdgeInsets.all(40), children: [
      Container(
          decoration: BoxDecoration(
              color: bodyTextColor,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
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
          child: Column(
            children: [
              HelloThere(),
              Container(child: Image.asset('assets/icons/dog-roll.gif')),
              AboutMe(),
            ],
          ))
    ]));
  }
}
