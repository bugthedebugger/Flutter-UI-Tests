import 'package:flutter/material.dart';
import 'package:ui_tests/beecreative_tutorial/listView.dart';
import 'package:ui_tests/assets_repo/appcolors.dart';
import 'package:ui_tests/beecreative_tutorial/network_call/apiCall.dart';


class MainPage extends StatelessWidget {
  final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData.dark(),
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(AppColors.skyBlue),
      appBar: AppBar(title: Text(title)),
      body: getData().fetchData(),

      drawer: Drawer(

        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the Drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('SCHEDULES'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('CLASSES'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('CONTENTS'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
        ListTile(
        title: Text('QUOTES'),
    onTap: (){
    Navigator.pop(context);
    },
        ),  ListTile(
      title: Text('SETTINGS'),
      onTap: (){
        Navigator.pop(context);
      },),
      ListTile(
        title: Text('HELP'),
        onTap: (){
          Navigator.pop(context);
        },),
      ListTile(
        title: Text('ABOUT'),
        onTap: (){
          Navigator.pop(context);
        },)
          ],
        ),
      ),
    );
  }
}