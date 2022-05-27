import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../colors/colors_views.dart';

class ButtonIngresar extends StatelessWidget {

  ButtonIngresar(this.email, this.password, {Key? key}) : super(key: key);
  final _auth = FirebaseAuth.instance;
  final String email;
  final String password;
  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 350,
      child: OutlinedButton(
        onPressed: () async {
          try {
            
            final user = await _auth.signInWithEmailAndPassword(
                email: email, password: password);
                
            if (user != null) {
              Navigator.pushNamed(context, 'home_screen');
            }
          } catch (e) {
            print(e);
          }
        },
        child: const Text('Ingresar',
            style:
                TextStyle(color: ColorsViews.background_color, fontSize: 18)),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
            return ColorsViews.buttonColor;
          }),
          overlayColor: MaterialStateProperty.resolveWith<Color>(
            (states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.grey;
              }
              return Colors.transparent;
            },
          ),
          shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
            (_) {
              return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25));
            },
          ),
        ),
      ),
    );
  }
}
