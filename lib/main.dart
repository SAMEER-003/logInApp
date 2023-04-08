import 'package:flutter/material.dart';
import 'package:login/loginPages/homePage.dart';
import 'package:login/loginPages/signup.dart';
import 'package:login/routes/routes.dart';

import 'loginPages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LogIn(),
        MyRoutes.signupRoutes: (context) => const SignUp()
      },
    );
  }
}
