import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_profile/screens/main/app_bar_content.dart';
import 'package:flutter_profile/screens/main/drawer_pages.dart';
import 'package:flutter_profile/screens/main/education_components/mobile_education_content.dart';
import 'package:flutter_profile/screens/main/education_components/web_education_content.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor2,
      appBar: AppBar(backgroundColor: primaryColor, elevation: 0, actions: [
        MediaQuery.of(context).size.width <= mobileWidth
            ? Builder(
                builder: (context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    icon: Icon(Icons.menu)))
            : AppBarContent(),
      ]),
      endDrawer: DrawerPages(),
      body: ResponsiveLayout(
        mobileBody: MobileEducationContent(),
        desktopBody: WebEducationContent(),
      ),
    );
  }
}
