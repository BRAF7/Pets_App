// ignore_for_file: file_names

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import './progressCustom.dart';

class ProgressView extends StatefulWidget {
  const ProgressView({Key? key}) : super(key: key);

  @override
  State<ProgressView> createState() => _ProgressViewState();
}

late Timer _timer;
var porcentaje = 0;

class _ProgressViewState extends State<ProgressView> {
  @override
  void initState() {
    timer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 150,
          height: 150,
          child: CustomPaint(
            painter: ProgressCustom(porcentaje),
          ),
        ),
      ),
    );
  }

  void timer() {
    Duration duration = Duration(milliseconds: 100); 
    _timer = Timer.periodic(duration, (timer) {
      if (porcentaje == 100) {
        setState(() {
          timer.cancel();
          porcentaje = 0;
        });
      } else {
        setState(() {
          porcentaje++;
        });
      }
    });
  }
}

