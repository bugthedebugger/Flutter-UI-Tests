import 'package:flutter/material.dart';
import 'package:ui_tests/assets_repo/appphotos.dart';
import 'package:ui_tests/assets_repo/appcolors.dart';
import 'package:ui_tests/assets_repo/fontstyles.dart';

class WelcomeEnd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(AppColors.welcEnd),
      body: new Container(
        margin: EdgeInsets.all(35),
        padding: EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
          bottom: 5
        ),
        alignment: Alignment.center,
        decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [new BoxShadow(
              color: Colors.black12,
              blurRadius: 6.0,
              spreadRadius: 6.0,
              offset: new Offset(0.0, 3.0)
            )
          ]
        ),
        child: new Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Wrap(
                alignment: WrapAlignment.center,
                direction: Axis.horizontal,
                spacing: 30.0,
                runSpacing: 0.0,
                runAlignment: WrapAlignment.spaceBetween,
                children: <Widget>[
                  new Container(
                    height: 172.55,
                    width: 150.61,
                    decoration: BoxDecoration(
                      image: new DecorationImage(
                        image: ExactAssetImage(AppPhotos.welcPhotos),
                        fit: BoxFit.contain
                      )
                    ),
                  ),
                  new Container(
                    height: 172.55,
                    width: 150.61,
                    decoration: BoxDecoration(
                      image: new DecorationImage(
                        image: ExactAssetImage(AppPhotos.welcRandomizer),
                        fit: BoxFit.contain
                      )
                    ),
                  ),
                  new Container(
                    height: 172.55,
                    width: 150.61,
                    decoration: BoxDecoration(
                      image: new DecorationImage(
                        image: ExactAssetImage(AppPhotos.welcAttendance),
                        fit: BoxFit.contain
                      )
                    ),
                  )
                ],
              ),
              new Column(
                children: <Widget>[
                  welcomeEndTextList(
                      AppColors.welcEnd,
                      "Take Attendance",
                      AppFontStyles().gettingStartedWelcEndHeadStyle
                  ),
                  welcomeEndTextList(
                      AppColors.welcEnd,
                      "Take Photos",
                      AppFontStyles().gettingStartedWelcEndHeadStyle
                  ),
                  welcomeEndTextList(
                      AppColors.welcEnd,
                      "Student Randomizer",
                      AppFontStyles().gettingStartedWelcEndHeadStyle
                  ),
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text("<", style: AppFontStyles.welcEnd),
                  new Icon(
                    Icons.check
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget welcomeEndTextList(appColor, text, fontStyle){
    return new Container(
      margin: EdgeInsets.only(bottom: 10, left: 50),
      width: 500,
      height: 50,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.check, size: 40, color: Color(appColor)),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text(text, style: fontStyle),
          )
        ],
      ),
    );
  }

}