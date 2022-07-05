import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/about_me_screen.dart';
import 'package:flutter_profile/screens/main/education_screen.dart';
import 'package:flutter_profile/screens/main/main_screen.dart';
import 'package:flutter_profile/screens/main/project_screen.dart';

class DrawerPages extends StatelessWidget {
  const DrawerPages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: bodyTextColor),
                child: Center(child: Image.asset('assets/icons/drawer.gif'))),
            ListTile(
              tileColor: drawerTileColor1,
              hoverColor: drawerHoverColor1,
              iconColor: drawerIconColor1,
              textColor: drawerTextColor1,
              leading: Icon(
                Icons.home_rounded,
              ),
              title: Text(
                "H O M E",
              ),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MainScreen()));
              },
            ),
            ListTile(
              tileColor: drawerTileColor2,
              hoverColor: drawerHoverColor2,
              iconColor: drawerIconColor2,
              textColor: drawerTextColor2,
              leading: Icon(
                Icons.person_rounded,
              ),
              title: Text(
                "A B O U T  M E",
              ),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AboutMeScreen()));
              },
            ),
            ListTile(
              tileColor: drawerTileColor1,
              hoverColor: drawerHoverColor1,
              iconColor: drawerIconColor1,
              textColor: drawerTextColor1,
              leading: Icon(
                Icons.task_rounded,
              ),
              title: Text(
                "P R O J E C T",
              ),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ProjectScreen()));
              },
            ),
            ListTile(
              tileColor: drawerTileColor2,
              hoverColor: drawerHoverColor2,
              iconColor: drawerIconColor2,
              textColor: drawerTextColor2,
              leading: Icon(
                Icons.school_rounded,
              ),
              title: Text(
                "E D U C A T I O N",
              ),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => EducationScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
