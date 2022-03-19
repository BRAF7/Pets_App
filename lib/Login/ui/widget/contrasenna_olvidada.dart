
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../colors/colors_views.dart';

class ContrasennaOlvidada extends StatelessWidget {
  const ContrasennaOlvidada({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.start,
      text: TextSpan(children: <InlineSpan>[
        TextSpan(
          text: '¿Has olvidado tu contraseña?',
          style: const TextStyle(
              color: ColorsViews.bar_color_able,
              fontSize: 17,
              fontWeight: FontWeight.bold),
          recognizer: TapGestureRecognizer()..onTap = () {Navigator.pushNamed(context, '/recover_pass');},
        ),
      ]),
    );
  }
}