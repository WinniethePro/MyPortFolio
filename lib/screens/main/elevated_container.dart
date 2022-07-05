import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

class ElevatedContainer extends StatelessWidget {
  final double containerHeight;
  final double containerPadding;
  final Widget containerChild;
  ElevatedContainer({
    required this.containerHeight,
    required this.containerPadding,
    required this.containerChild,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: containerHeight,
        padding: EdgeInsets.all(containerPadding),
        decoration: BoxDecoration(
            color: bodyTextColor,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade500,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
            ]),
        child: containerChild);
  }
}
