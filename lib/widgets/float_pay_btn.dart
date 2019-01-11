import 'package:flutter/material.dart';
import '../theme/theme.dart';

class FloatPaymentBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Palette.mainRed,
      borderRadius: BorderRadius.circular(5.0),
      child: InkWell(
        splashColor: Palette.mainBlue,
        onTap: () {},
        borderRadius: BorderRadius.circular(5.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          height: 50.0,
          decoration: BoxDecoration(
            // color: Palette.mainRed,
            // borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Palette.mainRedT,
                offset: Offset(0, 2),
                blurRadius: 7,
              ),
            ],
          ),
        child: Row(
          children: <Widget>[

            Expanded(
              child: Text(
                'Make Payment',
                style: TextStyle(
                  color: Palette.white,
                  fontSize: 16,
                  fontFamily: 'JosefinSans',
                  fontWeight: FontWeight.w200)),
            ),

            Text(
              '\$',
              style: TextStyle(
                color: Palette.white,
                fontSize: 16,
                fontFamily: 'JosefinSans',
                fontWeight: FontWeight.w200)),
          ],),
        ),
      ),
    );
  }
}