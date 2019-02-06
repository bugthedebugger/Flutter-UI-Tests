import 'package:flutter/material.dart';
import 'package:ui_tests/assets_repo/appcolors.dart';
import 'package:ui_tests/assets_repo/screen_size.dart';
import 'package:ui_tests/widgets/melting_card/melting_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationWelcome extends StatefulWidget {
  _NotificationWelcomeState createState() => _NotificationWelcomeState();
}

class _NotificationWelcomeState extends State<NotificationWelcome> {
  int _notificationGroupValue = -1;

  void _notificationFormHandler(val){
    setState(() {
      _notificationGroupValue = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _notificationFormKey = GlobalKey<FormState>();
    Stream _stream;
    ScreenUtil.instance = ScreenUtil(width: ScreenSize.screenWidth, height: ScreenSize.screenHeight, allowFontScaling: true)..init(context);
    return Scaffold(
      body: Column(
        children: <Widget>[
          MeltingCard(
            color: Color(AppColors.meltingCardColor),
            height: ScreenUtil().setHeight(320),
            child: Padding(
              padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(150)),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: ScreenUtil().setHeight(58),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(10)),
                    StreamBuilder(
                      stream: _stream ,
                      initialData: Text(
                        "Welcome User!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 21
                        )
                      ),
                      builder: (BuildContext context, AsyncSnapshot snapshot){
                        if( snapshot.hasData )
                          return Text(
                            "Logged in User!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 21
                            )
                          );
                      },
                    ),
                  ],
                )
              ),
            ),
          ),
          Form(
            key: _notificationFormKey,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(50)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "What time would you like to be notified about your classes?",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(15),
                  ),
                  Row(
                    children: <Widget>[
                      Radio(
                        groupValue: _notificationGroupValue,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: 0,
                        activeColor: Color(AppColors.meltingCardColor),
                        onChanged: _notificationFormHandler,
                      ),
                      Text(
                        "an hour earlier",
                        style: TextStyle(
                          color: Color(0xff444444),
                          fontSize: 12
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Radio(
                        groupValue: _notificationGroupValue,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: 1,
                        activeColor: Color(AppColors.meltingCardColor),
                        onChanged: _notificationFormHandler,
                      ),
                      Text(
                        "the evening before",
                        style: TextStyle(
                          color: Color(0xff444444),
                          fontSize: 12
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Radio(
                        groupValue: _notificationGroupValue,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: 2,
                        activeColor: Color(AppColors.meltingCardColor),
                        onChanged: _notificationFormHandler,
                      ),
                      Text(
                        "5 min earlier",
                        style: TextStyle(
                          color: Color(0xff444444),
                          fontSize: 12
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: ScreenUtil().setHeight(30)),
                  RaisedButton(
                    elevation: 1,
                    padding: EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 10
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                    ),
                    onPressed: (){},
                    color: Color(AppColors.meltingCardColor),
                    child: Container(
                      width: ScreenUtil().setWidth(138),
                      child: Center(
                        child: Text(
                          "Done",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        )
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "SKIP",
                      style: TextStyle(
                        color: Color(AppColors.meltingCardColor),
                        fontSize: 12
                      )
                    ),
                  )
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}
