import 'package:flutter/material.dart';
import '../widget/login_option.dart';
import '../widget/logo.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Container(
      //   width: 550,
      //   height: 850,
      //   alignment: Alignment.center,
      //   child: LoginOption(),
      // ),
      body: Column(
        children: <Widget>[
          Logo_App(),
          // SizedBox(
          //   height: 125,
          // ),
          Column(children: const<Widget>[
            LoginOption(),
          ]),
        ],
      ),
    );
  }
}
