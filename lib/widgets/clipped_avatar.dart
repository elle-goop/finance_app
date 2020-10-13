import 'package:flutter/material.dart';
import '../theme/theme.dart';

class ClippedAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Palette.grey[300],
          offset: Offset(0, 0),
          blurRadius: 10,
          spreadRadius: 0.5,
        ),
      ]),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(1.0),
          bottomLeft: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0),
        ),
        child: Align(
          child: Image.asset(
            'assets/images/woman.png',
            // height: 34.5,
            // width: 35,
          ),
        ),
      ),
    );
  }
}
