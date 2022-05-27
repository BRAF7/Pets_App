import 'package:firebase_auth/firebase_auth.dart';


import 'package:flutter/material.dart';
import 'package:mvp_all/Register/ui/widget/app_bar.dart';
import 'package:mvp_all/colors/colors_views.dart';

import '../widget/sign_in_with_email.dart';
import '../widget/terms_and_conditions.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;
  bool _passwordVisible = false;
  bool _value = false;
  late String email;
  late String password;
  late String name;
  @override
  void initState() {
    _passwordVisible = false;
    _value = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const AppBarRegister(),
      body: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: Text(
              'Crea una cuenta nueva para empezar a usar la app',
              style: TextStyle(
                color: Color.fromARGB(255, 117, 113, 113),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Form(
            child: Column(
              key: _formKey,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                    right: 305,
                  ),
                  child: Text(
                    'Nombre',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintStyle:
                          const TextStyle(color: ColorsViews.text_subtitle),
                      hintText: "Nombre completo",
                      fillColor: Colors.white70,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      name = value;
                      //Do something with the user input.
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                    left: 0,
                    right: 230,
                  ),
                  child: Text(
                    'Correo electrónico',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintStyle:
                          const TextStyle(color: Color.fromARGB(255, 161, 161, 161)),
                      hintText: "Direccion de correo",
                      fillColor: Colors.white70,
                    ),
                    onChanged: (value) {
                      email = value;
                      //Do something with the user input.
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                    right: 280,
                  ),
                  child: Text(
                    'Contraseña',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: TextFormField(
                    onChanged: (value) {
                      password = value;
                      //Do something with the user input.
                    },
                    keyboardType: TextInputType.text,
                    obscureText:
                        !_passwordVisible, //This will obscure text dynamically
                    decoration: InputDecoration(
                      hintText: 'Contraseña',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 161, 161, 161),
                      ),
                      fillColor: Colors.white70,
                      // Here is key idea
                      suffixIcon: IconButton(
                        icon: Icon(
                          // Based on passwordVisible state choose the icon
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: const Color.fromARGB(255, 179, 179, 179),
                        ),
                        onPressed: () {
                          // Update the state i.e. toogle the state of passwordVisible variable
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.only(top: 10, left: 35, right: 25, bottom: 15),
                  child: Text(
                    'Las contraseñas deben de contener caracteres, numeros y simbolos con un minimo de 6 caracteres.',
                    style: TextStyle(
                        color: Color.fromARGB(255, 204, 203, 203),
                        fontSize: 15),
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      value: _value,
                      onChanged: (v) {
                        setState(() {
                          _value = !_value;
                          print(_value);
                        });
                      },
                    ),
                    const Flexible(child: terminos_y_condiciones()),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: SizedBox(
                    height: 50,
                    width: 350,
                    child: OutlinedButton(
                      onPressed: () async {
                        try {
                          final newUser =
                              await _auth.createUserWithEmailAndPassword(
                                  email: email, password: password);
                          if (newUser != null) {
                            Navigator.pushNamed(context, '/home');
                          }
                        } catch (e) {
                          print(e);
                        }
                      },
                      child: const Text('Crear cuenta',
                          style: TextStyle(
                              color: ColorsViews.background_color,
                              fontSize: 18)),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>((states) {
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
                        shape:
                            MaterialStateProperty.resolveWith<OutlinedBorder>(
                          (_) {
                            return RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25));
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 55, top: 20),
                  child: Row(
                    children: const [
                      Flexible(
                        child: iniciar_sesion(),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}