import 'package:flutter/material.dart';
import 'beecreative_splash_screen/splash_screen.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter UI Tests",
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}