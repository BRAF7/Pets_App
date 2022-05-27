import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../colors/colors_views.dart';

class iniciar_sesion extends StatelessWidget {
  const iniciar_sesion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
        children: <InlineSpan>[
          const TextSpan(
            text: '¿Ya tienes una cuenta? ',
            style: TextStyle(color: ColorsViews.text_subtitle, fontSize: 18),
          ),
          TextSpan(
            text: ' Iniciar sesión.',
            style: const TextStyle(
                color: ColorsViews.bar_color_able, fontSize: 18),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushNamed(context, '/login_panel');
              },
          ),
        ],
      ),
    );
  }
}