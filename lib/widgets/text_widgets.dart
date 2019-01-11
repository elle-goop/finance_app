import 'package:flutter/material.dart';
import '../theme/theme.dart';

enum PriceStateColor {
  green, red, purple
}

class TextWithPrice extends StatelessWidget {
  TextWithPrice({this.text, this.price, this.color: PriceStateColor.purple});
  final String text;
  final double price;
  final PriceStateColor color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
            color: Palette.mainGrey,
            fontSize: 19,
            fontFamily: 'JosefinSans',
            fontWeight: FontWeight.bold,
          ),),
        Padding(
          padding: EdgeInsets.only(top: 5),
          child: Text(
            '\$${price.toString()}',
            style: TextStyle(
              color: colorPrice(color),
              fontSize: 34,
            ),),
        ),
      ],
    );
  }

  Color colorPrice(PriceStateColor color) {
    switch (color) {
      case PriceStateColor.green:
        return Palette.mainGreen;
        break;
      case PriceStateColor.red:
        return Palette.mainRed;
        break;
      case PriceStateColor.purple:
        return Palette.mainBlue;
        break;
    }
  }
}