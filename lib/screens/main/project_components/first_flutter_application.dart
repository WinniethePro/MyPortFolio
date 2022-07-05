import 'package:flutter/material.dart';

class FirstFlutterApplication extends StatelessWidget {
  const FirstFlutterApplication({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: [
          Container(
            height: 340,
            width: 600,
            child: Image.asset(
              'assets/images/FirstFlutterApplication.jpg',
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 70,
              width: 600,
              color: Color.fromARGB(148, 104, 105, 107),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "First Flutter Application",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
