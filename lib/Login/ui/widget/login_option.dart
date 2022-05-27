import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../models/authentication.dart';

class LoginOption extends StatelessWidget {
  const LoginOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          width: 300,
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () async {
                        User? user = await Authenticator.iniciarSesion(context: context);
                        print(user?.isAnonymous);
                        if(!user!.isAnonymous){
                          Navigator.pushNamed(context, '/home');
                        }
                        
                      },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF3169f5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset(
                          'assets/icons/google_icon.png',
                          scale: 50,
                          color: Colors.white,
                        ),
                        const Text(
                          'Continuar con Google',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF324fa5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const <Widget>[
                        Icon(Icons.facebook),
                        Text(
                          'Continuar con Facebook',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(
                            color: Color(0xFF64686f), width: 3),
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/register_page');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const <Widget>[
                          Icon(
                            Icons.email,
                            color: Color(0xFF64686f),
                          ),
                          Text(
                            'Registrarse con e-mail',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF64686f),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(children: <Widget>[
            SizedBox(
              height: 30,
              width: 150,
              child: TextButton(
                style: TextButton.styleFrom(primary: Colors.red),
                onPressed: () {},
                child: const Text(
                  'Entrar como invitado',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
              width: 150,
              child: TextButton(
                style: TextButton.styleFrom(primary: Colors.green[400]),
                onPressed: () {},
                child: const Text(
                  'Entrar como vendedor',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ),
            ),
          ]),
        ),

        // TextButton(
        //   style: TextButton.styleFrom(primary: Colors.green[400]),
        //   onPressed: () {},
        //   child: const Text(
        //     'Entrar como vendedor',
        //     style: TextStyle(
        //       fontSize: 13,
        //     ),
        //   ),
        // ),

        Padding(
          padding: const EdgeInsets.only(left: 100.0, top: 50),
          child: Row(
            children: <Widget>[
              const Text(
                '¿Ya tienes una cuenta?',
                textAlign: TextAlign.center,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login_panel');
                },
                child: const Text(
                  'Iniciar sesión',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
