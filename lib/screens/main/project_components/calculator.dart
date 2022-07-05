import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  const Calculator({
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
              'assets/images/calculator.jpg',
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 340,
              width: 600,
              color: Color.fromARGB(148, 104, 105, 107),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "In progress\n\n\n\nCalculator using Flutter",
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
