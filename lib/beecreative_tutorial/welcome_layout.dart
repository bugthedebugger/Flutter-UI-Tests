import 'package:flutter/material.dart';
import 'fontstyles.dart';

class WelcomeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3b2c85),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
              new Container(
                width: 172.55,
                height: 150.61,
                decoration: BoxDecoration(
                  image: new DecorationImage(
                    image: ExactAssetImage('assets/images/camera.png'),
                    fit: BoxFit.contain
                  )
                ),
              ),
              new Container(
                margin: EdgeInsets.only(top: 20),
                width: 350,
                height: 400,
                alignment: Alignment.topCenter,
                padding: EdgeInsets.all(50),
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  boxShadow: [new BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6.0,
                    spreadRadius: 6.0,
                    offset: new Offset(0.0, 3.0)
                  )],
                  shape: BoxShape.rectangle,
                ),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text("Take Photos", 
                      style: AppFontStyles().gettingStartedHeadStyle,
                    ),
                    new Text(
                      "No longer do you need to need the traditional approach to take attendance. With the all new BC APP, you can take attendance with ease. Just tap the kids that are absent and you are good to go!",                    
                      style: AppFontStyles().gettingStartedBodyStyle,
                    )
                  ],
                )
              )
          ],
        )
      ),
    );
  }
}
