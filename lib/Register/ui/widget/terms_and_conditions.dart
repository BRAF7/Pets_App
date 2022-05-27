import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../colors/colors_views.dart';

class terminos_y_condiciones extends StatelessWidget {
  const terminos_y_condiciones({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.start,
      text: TextSpan(children: <InlineSpan>[
        const TextSpan(
          text: 'Al registrarme, acepto ',
          style: TextStyle(color: ColorsViews.text_subtitle),
        ),
        TextSpan(
          text: ' los terminos y condiciones',
          style: TextStyle(color: ColorsViews.bar_color_able),
          recognizer: TapGestureRecognizer()..onTap = () {},
        ),
        const TextSpan(
          text: ' y la ',
          style: TextStyle(color: ColorsViews.text_subtitle),
        ),
        TextSpan(
          text: ' politica de privacidad.',
          style: TextStyle(color: ColorsViews.bar_color_able),
          recognizer: TapGestureRecognizer()..onTap = () {},
        ),
      ]),
    );
  }
}
