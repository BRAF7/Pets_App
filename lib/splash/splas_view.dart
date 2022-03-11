import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dart:ui' as ui;

// Importaciones clase Vistas
import '../pages/on_boarding.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  ui.Image? image;

  @override
  void initState() {
    super.initState();
    _toOnbording();
    _image('assets/image/splash.png');
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          child: CustomPaint(
            painter: _SplashCanvas(image),
          ),
          height: double.infinity,
          width: double.infinity,
        ),
      ),
    );
  }

  _toOnbording() async {
    await Future.delayed(const Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => OnBoarding(),
      ),
    );
  }

  _image(String path) async{
    final data = await rootBundle.load(path); 
    final bits = data.buffer.asUint8List();
    final image = await decodeImageFromList(bits);
    setState(() {
      this.image = image;
    });
  }
}

class _SplashCanvas extends CustomPainter {

  final ui.Image? image_canvas;

  const _SplashCanvas(this.image_canvas);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = Colors.amber;

    paint.style = PaintingStyle.stroke;

    paint.strokeWidth = 5;

    final path = Path();

    path.lineTo(0, size.height * 0.20);
    path.quadraticBezierTo(
        size.width * 0.50, size.height * 0.28, size.width, size.height * 0.20);

    // path.quadraticBezierTo(x1, y1, x2, y2)
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
    canvas.scale(0.23, 0.23);
    canvas.drawImage(image_canvas!, Offset(size.width * 1.2, size.width),paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
