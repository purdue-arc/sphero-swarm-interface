import 'package:flutter/material.dart';

class moleculeCanvas extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final oxygen = Paint()
      ..strokeWidth = 4
      ..color = Colors.blueAccent
      ..style = PaintingStyle.fill;

    var circleRadius = (size.width * size.height) * 0.0003;
    var circleCenter = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(circleCenter, circleRadius, oxygen);

    // final bonds = Paint()
    //   ..strokeWidth = 4
    //   ..color = Colors.redAccent
    //   ..style = PaintingStyle.fill;

    // final hydrogen = Paint()
    //   ..strokeWidth = 4
    //   ..color = Colors.yellowAccent
    //   ..style = PaintingStyle.fill;

    // // water molecule
    // var circleRadius = (size.width * size.height) * 0.0002;
    // var circleCenter = Offset(size.width / 2, size.height / 2);

    // // bonds
    // final square1 = Path();
    // var bondX1 = (size.width / 2) - 5;
    // var bondY1 = (size.height / 2) + (circleRadius);
    // square1.moveTo(bondX1, bondY1);
    // square1.relativeLineTo(10, 0);
    // square1.relativeLineTo(0, 50);
    // square1.relativeLineTo(-10, 0);
    // square1.close();

    // final square2 = Path();
    // var bondX2 = (size.width / 2) - 5;
    // var bondY2 = (size.height / 2) - (circleRadius);
    // square2.moveTo(bondX2, bondY2);
    // square2.relativeLineTo(41.38, 0);
    // square2.relativeLineTo(0, -10);
    // // square2.relativeLineTo(-10, 0);
    // square2.close();

    // // hydrogen molecules
    // var circleRadius2 = (size.width * size.height) * 0.00015;
    // var circleCenter2 = Offset(bondX1 + 41.38, bondY1 + (50 + circleRadius2));

    // var circleRadius3 = (size.width * size.height) * 0.00015;
    // var circleCenter3 = Offset(bondX2 + 41.38, bondY2 - (50 + circleRadius3));

    // // canvas.drawLine(Offset(bondX1 + 5, bondY1),
    // //     Offset(bondX1 + 41.38, bondY2 = (50 + circleRadius)), bonds);
    // canvas.drawLine(Offset(bondX1 + 5, bondY1),
    //     Offset(bondX1 + 41.38, bondY1 + (50 + circleRadius2)), bonds);
    // canvas.drawCircle(circleCenter2, circleRadius2, hydrogen);
    // canvas.drawCircle(circleCenter, circleRadius, oxygen);

    // // canvas.drawPath(square2, bonds);
    // canvas.drawLine(Offset(bondX2 + 5, bondY2),
    //     Offset(bondX2 + 41.38, bondY2 - (50 + circleRadius3)), bonds);
    // canvas.drawCircle(circleCenter3, circleRadius3, hydrogen);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
