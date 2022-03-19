import 'package:flutter/material.dart';
import 'package:mvp_all/Login/ui/screen/login.dart';
import 'package:mvp_all/Login/ui/screen/login_panel.dart';
import 'package:mvp_all/OnBoardingPage/ui/screen/on_boarding.dart';
import 'package:mvp_all/RecuperarContrasenna/ui/screen/recover_pass.dart';
import 'package:mvp_all/Register/ui/screen/register.dart';
import 'package:mvp_all/colors/colors_views.dart';
import 'package:mvp_all/pages/progressView.dart';
import 'package:mvp_all/splash/splas_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: ColorsViews.background_color,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => OnBoarding(),
        '/login': (context) => const Login(),
        '/login_panel': (context) => const LoginPanel(),
        '/register_page': (context) => const RegisterPage(),
        '/recover_pass': (context) => const RecoverPass(),
      },
      // home: SplashView(),
      // home: OnBoarding(),
    );
  }
}
