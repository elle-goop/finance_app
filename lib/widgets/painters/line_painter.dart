import 'package:flutter/material.dart';
import 'dart:math' as math;

class LinePainter extends CustomPainter {
  LinePainter(
    this.dataPoints, {
    this.lineWidth,
    this.lineColor1,
    this.lineColor2,
    this.lineShadow
    })  : _min = dataPoints.reduce(math.min),
          _max = dataPoints.reduce(math.max);
  final List<double> dataPoints;
  final double lineWidth;
  final Color lineColor1;
  final Color lineColor2;
  final BoxShadow lineShadow;

  final double _max;
  final double _min;

  @override
  void paint(Canvas canvas, Size size) {
    final double width = size.width - lineWidth;
    final double height = size.height - lineWidth;
    final double widthNormalizer = width / (dataPoints.length-1);
    final double heigthNormalizer = height / (_max - _min);

    // [10.0, 80.0, 100.5, 99.9, 60, 100, 15.5, 11.0, 20.5, 55.5, 67.8];

    final Path path1 = Path();
    final Path path2 = Path();
    // final List<Offset> points = <Offset>[];

    // Offset startPoint;

    for(int i = 0; i < dataPoints.length; i++) {
      double x = i * widthNormalizer + lineWidth/2;
      double y =
        height - (dataPoints[i] - _min) * heigthNormalizer + lineWidth/2;

      if (i == 0) {
        // startPoint = Offset(x, y);
        // path1.moveTo(x, y);
        path1.moveTo(0, y);
        path2.moveTo(0, y+lineWidth/1.8);
      } else {
        // print('x $x, y $y');
        path1.lineTo(x, y);
        path2.lineTo(x, y+lineWidth/1.8);
      }
    }

    final Paint paint1 = Paint()
      ..strokeWidth = lineWidth
      ..color = lineColor1
      ..strokeCap = StrokeCap.square
      ..strokeJoin = StrokeJoin.round
      ..style = PaintingStyle.stroke;

    final Paint paint2 = Paint()
      ..strokeWidth = lineWidth*1.8
      ..color = lineColor2
      ..strokeCap = StrokeCap.square
      ..strokeJoin = StrokeJoin.round
      ..style = PaintingStyle.stroke;

    canvas.drawPath(path2, paint2);
    canvas.drawPath(path1, paint1);
  }


  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}