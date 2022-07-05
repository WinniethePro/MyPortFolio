import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/main_components/home_components/email_button.dart';
import 'package:flutter_profile/screens/main/main_components/home_components/profile_pic.dart';
import 'package:flutter_profile/screens/main/text_style.dart';

class MobileHomeContent extends StatelessWidget {
  const MobileHomeContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Container(
          decoration: BoxDecoration(
              color: bgColor,
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
              ProfilePic(),
              FittedBox(
                fit: BoxFit.fitWidth,
                child: TxtStyle(
                  label: "Jesper Chris",
                  fontSize: 120,
                  fontColor: darkColor,
                ),
              ),
              FittedBox(
                fit: BoxFit.fitWidth,
                child: TxtStyle(
                  label: "Tiongson",
                  fontSize: 120,
                  fontColor: darkColor,
                ),
              ),
              TxtStyle(
                  label: "Bachelor of Science in Computer Science",
                  fontColor: primaryColor,
                  fontSize: 20),
              AnimatedEmailButton(),
              Container(
                width: 300,
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: TextButton.styleFrom(
                          fixedSize: Size(50, 50),
                          backgroundColor: bgColor,
                          shape: CircleBorder()),
                      onPressed: () {},
                      child: Image.asset(
                        'assets/icons/facebook.png',
                      ),
                    ),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                          fixedSize: Size(50, 50),
                          backgroundColor: bgColor,
                          shape: CircleBorder()),
                      onPressed: () {},
                      child: Image.asset(
                        'assets/icons/twitter.png',
                      ),
                    ),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                          fixedSize: Size(50, 50),
                          backgroundColor: bgColor,
                          shape: CircleBorder()),
                      onPressed: () {},
                      child: Image.asset(
                        'assets/icons/instagram.png',
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),

          // child: Column(
          //   children: [
          //     ProfilePic(
          //       picWidth: 150,
          //     ),
          //     PersonalInfo(),
          //   ],
          // ),
        ),
      ],
    );
  }
}
