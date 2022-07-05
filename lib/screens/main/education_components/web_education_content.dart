import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/main/education_components/college.dart';
import 'package:flutter_profile/screens/main/education_components/junior_high.dart';
import 'package:flutter_profile/screens/main/education_components/senior_high.dart';
import 'package:flutter_profile/screens/main/elevated_container.dart';
import 'package:lottie/lottie.dart';

class WebEducationContent extends StatelessWidget {
  const WebEducationContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(200, 0, 200, 40),
      children: [
        SizedBox(height: 40),
        Center(
            child: Text(
          "E D U C A T I O N",
          style: TextStyle(fontSize: 50),
        )),
        SizedBox(height: 40),
        ElevatedContainer(
          containerPadding: 40,
          containerHeight: 420,
          containerChild: Row(
            children: [
              Expanded(
                  child: Lottie.network(
                      'https://assets5.lottiefiles.com/packages/lf20_fq7pwzey.json')),
              Expanded(
                child: College(),
              ),
            ],
          ),
        ),
        SizedBox(height: 40),
        ElevatedContainer(
          containerPadding: 40,
          containerHeight: 420,
          containerChild: Row(children: [
            Expanded(
                child: Lottie.network(
                    'https://assets10.lottiefiles.com/packages/lf20_1sehvdyy.json')),
            Expanded(child: SeniorHigh()),
          ]),
        ),
        SizedBox(height: 40),
        ElevatedContainer(
          containerPadding: 40,
          containerHeight: 420,
          containerChild: Row(children: [
            Expanded(
                child: Lottie.network(
                    'https://assets7.lottiefiles.com/private_files/lf30_hkjybjqt.json')),
            Expanded(child: JuniorHigh()),
          ]),
        ),
      ],
    );
  }
}
