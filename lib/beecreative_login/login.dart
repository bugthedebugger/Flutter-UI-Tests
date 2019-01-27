import 'package:flutter/material.dart';
import 'package:ui_tests/assets_repo/appcolors.dart';
import 'package:ui_tests/assets_repo/appphotos.dart';
import 'package:ui_tests/beecreative_login/card.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        overflow: Overflow.clip,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color(AppColors.loginBackground),
          ),
          Positioned(
            top: 60,
            left: 20,
            child: Container(
              width: 80,
              height: 40,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage(AppPhotos.loginScreen_cloud3),
                  fit: BoxFit.contain
                )
              ),
            ),
          ),
          Positioned(
            top: 110,
            left: 200,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage(AppPhotos.loginScreen_cloud1),
                  fit: BoxFit.contain
                )
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage(AppPhotos.loginScreen_cloud2),
                  fit: BoxFit.contain
                )
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.47,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 23,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage(AppPhotos.loginScreen_grass1),
                  repeat: ImageRepeat.repeatX,
                  fit: BoxFit.contain,
                  alignment: Alignment.centerLeft,

                )
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.50,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.50,
              color: Color(AppColors.loginGrass),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(),
                ),
                Container(
                  width: 268,
                  height: 172,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage(AppPhotos.loginScreen_karkhana_building),
                      fit: BoxFit.fill
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                LoginCard(),
              ],
            ),
          )
        ],
      ),
    );
  }
}