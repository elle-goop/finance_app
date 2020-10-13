import 'package:flutter/material.dart';
import '../theme/theme.dart';
import '../widgets/painters/line_painter.dart';

const List<double> expenses = [
  10.0,
  80.0,
  100.5,
  99.9,
  60,
  100,
  15.5,
  11.0,
  20.5,
  55.5,
  67.8
];

class Custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size viewportSize;
    double ratio;
    viewportSize = MediaQuery.of(context).size;
    ratio = 0.2;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox.fromSize(
            size: Size(viewportSize.width, viewportSize.width * ratio),
            child: CustomPaint(
              painter: LinePainter(
                expenses,
                lineWidth: 5,
                lineColor1: Palette.mainBlue,
                lineColor2: Palette.greyLight,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
