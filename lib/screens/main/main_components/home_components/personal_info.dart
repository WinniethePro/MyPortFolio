import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/main_components/home_components/email_button.dart';
import 'package:flutter_profile/screens/main/text_style.dart';
import 'package:url_launcher/link.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                  Link(
                    target: LinkTarget.self,
                    uri: Uri.parse(
                        'https://www.facebook.com/jesper.chris.tiongson'),
                    builder: (context, followLink) => ElevatedButton(
                      style: TextButton.styleFrom(
                          fixedSize: Size(50, 50),
                          backgroundColor: bgColor,
                          shape: CircleBorder()),
                      onPressed: () {},
                      child: Image.asset(
                        'assets/icons/facebook.png',
                      ),
                    ),
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse('https://twitter.com/jaayyyceeeee'),
                    builder: (context, followLink) => ElevatedButton(
                      style: TextButton.styleFrom(
                          fixedSize: Size(50, 50),
                          backgroundColor: bgColor,
                          shape: CircleBorder()),
                      onPressed: () {},
                      child: Image.asset(
                        'assets/icons/twitter.png',
                      ),
                    ),
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse(
                        'https://www.instagram.com/jaayyycccceeeeee/'),
                    builder: (context, followLink) => ElevatedButton(
                      style: TextButton.styleFrom(
                          fixedSize: Size(50, 50),
                          backgroundColor: bgColor,
                          shape: CircleBorder()),
                      onPressed: () {},
                      child: Image.asset(
                        'assets/icons/instagram.png',
                      ),
                    ),
                  ),
                ],
              ),
            )
          ]),
    );
  }
}
