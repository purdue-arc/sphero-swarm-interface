import 'package:flutter/material.dart';

class moleculeCanvas extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final oxygen = Paint()
      ..strokeWidth = 4
      ..color = Colors.blueAccent
      ..style = PaintingStyle.fill;
    final bonds = Paint()
      ..strokeWidth = 4
      ..color = Colors.redAccent
      ..style = PaintingStyle.fill;

    final hydrogen = Paint()
      ..strokeWidth = 4
      ..color = Colors.yellowAccent
      ..style = PaintingStyle.fill;

    // water molecule
    var circleRadius = (size.width * size.height) * 0.0002;
    var circleCenter = Offset(size.width / 2, size.height / 2);

    // bonds
    final square1 = Path();
    var bondX1 = (size.width / 2) - 5;
    var bondY1 = (size.height / 2) + (circleRadius);
    square1.moveTo(bondX1, bondY1);
    square1.relativeLineTo(10, 0);
    square1.relativeLineTo(0, 50);
    square1.relativeLineTo(-10, 0);
    square1.close();

    final square2 = Path();
    var bondX2 = (size.width / 2) - 5;
    var bondY2 = (size.height / 2) - (circleRadius);
    square2.moveTo(bondX2, bondY2);
    square2.relativeLineTo(10, 0);
    square2.relativeLineTo(0, -50);
    square2.relativeLineTo(-10, 0);
    square2.close();

    // water molecules
    var circleRadius2 = (size.width * size.height) * 0.00015;
    var circleCenter2 = Offset(bondX1 + 5, bondY1 + (50 + circleRadius2));

    var circleRadius3 = (size.width * size.height) * 0.00015;
    var circleCenter3 = Offset(bondX2 + 5, bondY2 - (50 + circleRadius3));

    canvas.drawCircle(circleCenter2, circleRadius2, hydrogen);
    canvas.drawCircle(circleCenter, circleRadius, oxygen);
    canvas.drawCircle(circleCenter3, circleRadius3, hydrogen);
    canvas.drawPath(square1, bonds);
    canvas.drawPath(square2, bonds);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
