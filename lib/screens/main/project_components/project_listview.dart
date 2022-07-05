import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/main/elevated_container.dart';
import 'package:flutter_profile/screens/main/project_components/calculator.dart';
import 'package:flutter_profile/screens/main/project_components/first_flutter_application.dart';
import 'package:flutter_profile/screens/main/project_components/flappy_bird.dart';

class ProjectListView extends StatelessWidget {
  const ProjectListView({
    Key? key,
    required this.left,
    required this.right,
  }) : super(key: key);

  final double left;
  final double right;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.fromLTRB(left, 20, right, 20),
      children: [
        ElevatedContainer(
          containerHeight: 340,
          containerPadding: 0,
          containerChild: FlappyBird(),
        ),
        SizedBox(height: 20),
        ElevatedContainer(
          containerHeight: 340,
          containerPadding: 0,
          containerChild: FirstFlutterApplication(),
        ),
        SizedBox(height: 20),
        ElevatedContainer(
          containerHeight: 340,
          containerPadding: 0,
          containerChild: Calculator(),
        ),
      ],
    );
  }
}
