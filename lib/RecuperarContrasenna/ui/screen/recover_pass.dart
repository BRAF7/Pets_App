import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mvp_all/colors/colors_views.dart';

class RecoverPass extends StatefulWidget {
  const RecoverPass({Key? key}) : super(key: key);

  @override
  State<RecoverPass> createState() => _RecoverPassState();
}

class _RecoverPassState extends State<RecoverPass> {
  final _formKey = GlobalKey<FormState>();
  bool _passwordVisible = false;
  @override
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    bool _value = false;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: ColorsViews.text_header,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: ColorsViews.bar_color_able,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
        ),
        title: const Text('Iniciar sesion'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 4, bottom: 4, right: 15),
            child: Image.asset(
              'assets/image/splash.png',
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: Text(
              'Ingresa tu email para restablecer tu contraseña.',
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
                    left: 0,
                    right: 250,
                  ),
                  child: Text(
                    'Correo electronico',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 161, 161, 161)),
                      hintText: "Direccion de correo",
                      fillColor: Colors.white70,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.only(top: 10, left: 30, right: 25, bottom: 15),
                  child: Text(
                    'Ingrese su correo electronico registrado y le enviaremos un correo electronico con un enlace que contiene un enlace para restablecer su contraseña.',
                    style: TextStyle(
                        color: Color.fromARGB(255, 204, 203, 203),
                        fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 285),
                  child: SizedBox(
                    height: 50,
                    width: 350,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Enviar solicitud',
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
              ],
            ),
          )
        ],
      ),
    );
  }
}

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
          recognizer: TapGestureRecognizer()..onTap = () {},
        ),
      ]),
    );
  }
}
