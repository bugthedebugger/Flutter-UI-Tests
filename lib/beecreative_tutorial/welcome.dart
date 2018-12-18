import 'package:flutter/material.dart';
import 'attendance_tutorial.dart';
import 'camera_tutorial.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  PageController _pageController = new PageController(
    initialPage: 1
  );

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        new AttendanceTutorial(),
        new CameraTutorial()
      ],
    );
  }
}