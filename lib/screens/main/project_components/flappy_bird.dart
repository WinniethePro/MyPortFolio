import 'package:flutter/material.dart';

class FlappyBird extends StatelessWidget {
  const FlappyBird({
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
              'assets/images/flappyBird.jpg',
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
                  "Flappy Bird using Scratch",
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
