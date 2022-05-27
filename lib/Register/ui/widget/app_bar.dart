import 'package:flutter/material.dart';

import '../../../colors/colors_views.dart';

class AppBarRegister extends StatelessWidget with PreferredSizeWidget {
  const AppBarRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorsViews.text_header,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: ColorsViews.bar_color_able,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: const Text('Regístrate'),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 4, bottom: 4, right: 15),
          child: Image.asset(
            'assets/image/splash.png',
            color: Colors.white,
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
