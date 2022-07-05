import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

class TxtStyle extends StatelessWidget {
  const TxtStyle({
    Key? key,
    required this.label,
    required this.fontColor,
    required this.fontSize,
  }) : super(key: key);

  final String label;
  final Color fontColor;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        label,
        style: TextStyle(
            fontSize: fontSize, fontFamily: barFontFamily, color: fontColor),
      ),
    );
  }
}
