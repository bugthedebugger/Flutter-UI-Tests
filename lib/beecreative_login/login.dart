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
                  image: ExactAssetImage(AppPhotos.loginScreenCloud3),
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
                  image: ExactAssetImage(AppPhotos.loginScreenCloud1),
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
                  image: ExactAssetImage(AppPhotos.loginScreenCloud2),
                  fit: BoxFit.contain
                )
              ),
            ),
          ),
          Positioned(
            top: 90,
            right: 80,
            child: Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage(AppPhotos.loginScreenBird1),
                  fit: BoxFit.contain
                )
              ),
            )
          ),
          Positioned(
            top: 100,
            right: 100,
            child: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage(AppPhotos.loginScreenBird1),
                  fit: BoxFit.contain
                )
              ),
            )
          ),
          Positioned(
            top: 105,
            right: 85,
            child: Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage(AppPhotos.loginScreenBird1),
                  fit: BoxFit.contain
                )
              ),
            )
          ),
          Positioned(
            top: 310,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 23,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage(AppPhotos.loginScreenGrass1),
                  repeat: ImageRepeat.repeatX,
                  fit: BoxFit.contain,
                  alignment: Alignment.centerLeft,

                )
              ),
            ),
          ),
          Positioned(
            top: 330,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Color(AppColors.loginGrass),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 160,
                ),
                Container(
                  width: 268,
                  height: 172,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage(AppPhotos.loginScreenKarkhanaBuilding),
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