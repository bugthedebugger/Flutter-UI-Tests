import 'package:flutter/material.dart';
import 'package:ui_tests/beecreative_login/login.dart';
import 'beecreative_splash_screen/splash_screen.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter UI Tests",
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}