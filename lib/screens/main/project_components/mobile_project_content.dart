import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/elevated_container.dart';
import 'package:flutter_profile/screens/main/project_components/project_listview.dart';
import 'package:flutter_profile/screens/main/project_components/skills.dart';
import 'package:lottie/lottie.dart';

class MobileProjectContent extends StatelessWidget {
  const MobileProjectContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(100, 40, 100, 40),
      children: [
        ElevatedContainer(
          containerHeight: 800,
          containerPadding: 20,
          containerChild: Column(
            children: [
              Container(
                height: 200,
                child: Row(
                  children: [
                    Expanded(
                      child: FittedBox(
                          fit: BoxFit.fitWidth, child: Text("P R O J E C T S")),
                    ),
                    Expanded(
                      child: Lottie.network(
                          'https://assets5.lottiefiles.com/packages/lf20_hrkmmhjf.json'),
                    ),
                  ],
                ),
              ),
              Container(
                height: 500,
                decoration: BoxDecoration(
                    color: bgColor,
                    border: Border.all(color: Color(0x35000000)),
                    borderRadius: BorderRadius.circular(20)),
                child: ProjectListView(left: 20, right: 20),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        ElevatedContainer(
          containerHeight: 400,
          containerPadding: 20,
          containerChild: Column(
            children: [
              Lottie.network(
                  'https://assets7.lottiefiles.com/packages/lf20_nss1rfwu.json'),
              Skills(),
            ],
          ),
        ),
      ],
    );
  }
}
