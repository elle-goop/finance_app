import 'package:flutter/material.dart';
import '../theme/theme.dart';
import '../data/data.dart';
import '../model/card.dart';
import '../theme/custom_icons.dart';
import 'package:intl/intl.dart';


class PlasticCard extends StatelessWidget {
  PlasticCard({this.card, this.color: Palette.mainPurple});
  final CardItem card;
  final Color color;

  @override
  Widget build(BuildContext context) {
    // return SizedBox.fromSize(
      // size: Size(200, 100),
        // aspectRatio: 1.8,

      return Container(
        decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6.0),
        boxShadow: [
          BoxShadow(
            color: Palette.mainBlueT,
            offset: Offset(0, 2),
            blurRadius: 17)
        ],),
        // child: Material(),
        child: Stack(
          children: <Widget>[
            // Positioned(
            //   top: 17,
            //   right: 55,
            //   child: Icon(CustomIcon.visa_logo, color: Palette.white,/*size: 17.0*/),
            // ),

            Align(
              alignment: Alignment(0.65,-0.8),
              child: Icon(CustomIcon.visa_logo, color: Palette.white,size: 18.0),
            ),

            Positioned(
              // alignment: Alignment(-0.8,1),
              left: 20,
              top: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Text(
                    card.cardHolder.name,
                    style: TextStyle(
                      fontFamily: 'JosefinSans',
                      fontSize: 17,
                      letterSpacing: -0.41,
                      color: Palette.white
                    ),),

                    Padding(
                      padding: EdgeInsets.only(bottom: 8, top: 8),
                      child: Text(
                        // '****  ****  ****  ${card.number.replaceRange(start, end, replacement)}',
                        '****  ****  ****',
                        style: TextStyle(
                          fontFamily: 'JosefinSans',
                          fontSize: 25,
                          letterSpacing: 0.35,
                          // height: 1.8,
                          color: Palette.white
                        ),),
                    ),

                    Text(
                    // DateFormat("MM/yy").format(DateTime(card.expireDate)),
                    '',
                    style: TextStyle(
                      fontFamily: 'JosefinSans',
                      fontSize: 12,
                      color: Colors.white70,
                    ),),
                ],
              ),
            ),

          ],
        ),
      );
    // );
  }
}