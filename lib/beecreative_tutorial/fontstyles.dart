import 'package:flutter/material.dart';
import 'appcolors.dart';

class AppFontStyles {

  static double gettingStarted_body = 13.0;
  static double gettingStarted_header = 21.0;


  static TextStyle _gettingStHead = TextStyle(
      fontSize: gettingStarted_header,
      color: Color(0xff78b04d)
  );

  final TextStyle _gettingStBody = TextStyle(
      fontSize: gettingStarted_body,
      color: Color(0xff444)
  );


  TextStyle get gettingStartedBodyStyle => _gettingStBody;
  TextStyle get gettingStartedHeadStyle => _gettingStHead;

}