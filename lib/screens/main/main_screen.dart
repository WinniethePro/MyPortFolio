import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_profile/screens/main/app_bar_content.dart';
import 'package:flutter_profile/screens/main/drawer_pages.dart';
import 'package:flutter_profile/screens/main/main_components/home_components/mobile_home_content.dart';
import 'package:flutter_profile/screens/main/main_components/home_components/web_home_content.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          primary: false,
          backgroundColor: primaryColor,
          elevation: 0,
          actions: [
            if (MediaQuery.of(context).size.width <= mobileWidth)
              Builder(
                  builder: (context) => IconButton(
                      onPressed: () {
                        Scaffold.of(context).openEndDrawer();
                      },
                      icon: Icon(Icons.menu)))
            else
              AppBarContent(),
          ]),
      endDrawer: DrawerPages(),
      body: ResponsiveLayout(
        mobileBody: MobileHomeContent(),
        desktopBody: WebHomeContent(),
      ),
    );
  }
}
