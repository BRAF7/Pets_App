import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

class ProgressCustom extends CustomPainter {
  int porcentage;
  ProgressCustom(this.porcentage);
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final paint1 = Paint();
    final paint2 = Paint();

    paint1.strokeWidth = 6;
    paint1.style = PaintingStyle.stroke;
    paint2.strokeWidth = 8;
    paint2.style = PaintingStyle.stroke;
    paint2.color = Colors.greenAccent;

    var offset = Offset(size.width * 0.48, size.height * 0.48);
    var radius = size.height / 2;

    var rect = Rect.fromCircle(center: offset, radius: radius);
    canvas.drawCircle(offset, radius, paint1);

    canvas.drawArc(rect, -pi / 2, (pi * 2 * porcentage) / 100, false, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
