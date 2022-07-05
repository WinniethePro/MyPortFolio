import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/elevated_container.dart';
import 'package:flutter_profile/screens/main/project_components/project_listview.dart';
import 'package:flutter_profile/screens/main/project_components/skills.dart';
import 'package:lottie/lottie.dart';

class WebProjectContent extends StatelessWidget {
  const WebProjectContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(100, 40, 100, 40),
      children: [
        ElevatedContainer(
          containerHeight: 540,
          containerPadding: 20,
          containerChild: Column(
            children: [
              Container(
                height: 500,
                child: Row(children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Expanded(
                          child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text("P R O J E C T S")),
                        ),
                        Expanded(
                          child: Lottie.network(
                              'https://assets5.lottiefiles.com/packages/lf20_hrkmmhjf.json'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 500,
                    width: 540,
                    decoration: BoxDecoration(
                        color: bgColor,
                        border: Border.all(color: Color(0x35000000)),
                        borderRadius: BorderRadius.circular(20)),
                    child: ProjectListView(
                      left: 100,
                      right: 100,
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
        SizedBox(height: 40),
        ElevatedContainer(
          containerHeight: 540,
          containerPadding: 20,
          containerChild: Row(
            children: [
              Skills(),
              Expanded(
                child: Lottie.network(
                    'https://assets7.lottiefiles.com/packages/lf20_nss1rfwu.json'),
              ),
            ],
          ),
        )
      ],
    );
  }
}
