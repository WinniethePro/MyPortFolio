import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/about_me_components/about_me.dart';
import 'package:flutter_profile/screens/main/about_me_components/hello_there.dart';

class WebAboutContent extends StatelessWidget {
  const WebAboutContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor2,
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
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      HelloThere(),
                      SizedBox(height: 150),
                      Container(
                          child: Image.asset('assets/icons/dog-roll.gif')),
                    ],
                  ),
                ),
                Expanded(child: AboutMe()),
              ],
            ),
          )
        ]));
  }
}
