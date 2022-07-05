import 'package:flutter/material.dart';

class HelloThere extends StatelessWidget {
  const HelloThere({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          "Hello There!",
          overflow: TextOverflow.visible,
          style: TextStyle(fontSize: 100),
        ));
  }
}
