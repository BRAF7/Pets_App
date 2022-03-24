import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';

import '../../../colors/colors_views.dart';

class Registrarse extends StatelessWidget {
  const Registrarse({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
        children: <InlineSpan>[
          const TextSpan(
            text: '¿Todavia no tienes cuenta? ',
            style: TextStyle(
              color: ColorsViews.text_subtitle,
              fontSize: 18,
            ),
          ),
          TextSpan(
            text: ' Regístrate.',
            style: const TextStyle(
                color: ColorsViews.bar_color_able, fontSize: 18, fontWeight: FontWeight.bold,),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushNamed(context, '/register_page');
              },
          ),
        ],
      ),
    );
  }
}