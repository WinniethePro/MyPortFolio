import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              child: Image.asset(
                'assets/images/TIONGSON_F1.jpg',
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
