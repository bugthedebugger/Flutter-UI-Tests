import 'package:flutter/material.dart';
import 'appcolors.dart';

class AppFontStyles {

  static double gettingStartedBody = 18.0;
  static double gettingStartedHeader = 28.0;
  static double gettingStartedEndHeader = 24;
  static double loginInfoText = 16.0;

  static TextStyle welcAttendanceHeader = TextStyle(
      fontSize: gettingStartedHeader,
      color: Color(AppColors.welcAttendanceColor)
  );

  static TextStyle welcPhotosHeader = TextStyle(
      fontSize: gettingStartedHeader,
      color: Color(AppColors.welcTakePhotosColor)
  );

  static TextStyle welcRandomizerHeader = TextStyle(
      fontSize: gettingStartedHeader,
      color: Color(AppColors.welcRandomizerColor)
  );

  static TextStyle gettingStBody = TextStyle(
      fontSize: gettingStartedBody,
      color: Color(AppColors.welcBodyColor)
  );

  static TextStyle welcEnd = TextStyle(
    fontSize: gettingStartedHeader,
    color: Color(AppColors.welcEnd)
  );

  static TextStyle welcendHeader = TextStyle(
    fontSize: gettingStartedEndHeader,
    color: Color(AppColors.welcEnd)
  );

  static TextStyle loginInfoTextSt = TextStyle(
    fontSize: loginInfoText,
    color: Color(AppColors.loginInfoText)
  );

  static TextStyle loginWithEmailSt = TextStyle(
    fontSize: loginInfoText,
    color: Color(AppColors.loginWithEmailText)
  );

  static TextStyle loginButtonSt = TextStyle(
    fontSize: loginInfoText,
    color: Colors.white
  );

  TextStyle get gettingStartedBodyStyle => gettingStBody;
  TextStyle get gettingStartedAttendanceHeadStyle => welcAttendanceHeader;
  TextStyle get gettingStartedPhotosHeadStyle => welcPhotosHeader;
  TextStyle get gettingStartedRandomizerHeadStyle => welcRandomizerHeader;
  TextStyle get gettingStartedWelcEndHeadStyle => welcendHeader;
  TextStyle get loginInfoTextStyle => loginInfoTextSt;
  TextStyle get loginWithEmailStyle => loginWithEmailSt;
  TextStyle get loginButtonStyle => loginButtonSt;

}