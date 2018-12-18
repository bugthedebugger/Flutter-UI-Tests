import 'package:flutter/material.dart';
import 'appcolors.dart';

class AppFontStyles {

  static double gettingStartedBody = 18.0;
  static double gettingStartedHeader = 28.0;


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

  final TextStyle _gettingStBody = TextStyle(
      fontSize: gettingStartedBody,
      color: Color(AppColors.welcBodyColor)
  );


  TextStyle get gettingStartedBodyStyle => _gettingStBody;
  TextStyle get gettingStartedAttendanceHeadStyle => welcAttendanceHeader;
  TextStyle get gettingStartedPhotosHeadStyle => welcPhotosHeader;
  TextStyle get gettingStartedRandomizerHeadStyle => welcRandomizerHeader;

}