import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/main/education_components/college.dart';
import 'package:flutter_profile/screens/main/education_components/junior_high.dart';
import 'package:flutter_profile/screens/main/education_components/senior_high.dart';
import 'package:flutter_profile/screens/main/elevated_container.dart';
import 'package:lottie/lottie.dart';

class MobileEducationContent extends StatelessWidget {
  const MobileEducationContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(100, 0, 100, 40),
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
          containerHeight: 500,
          containerChild: Column(
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
          containerHeight: 500,
          containerChild: Column(children: [
            Expanded(
                child: Lottie.network(
                    'https://assets10.lottiefiles.com/packages/lf20_1sehvdyy.json')),
            Expanded(child: SeniorHigh()),
          ]),
        ),
        SizedBox(height: 40),
        ElevatedContainer(
          containerPadding: 40,
          containerHeight: 500,
          containerChild: Column(children: [
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
