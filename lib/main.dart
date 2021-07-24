import 'package:app_name/Register.dart';
import 'package:app_name/menu.dart';
import 'package:app_name/screens.dart';
import 'package:app_name/studententry.dart';
import 'package:flutter/material.dart';


void main()
{
  runApp(Mymenu());
}
class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.greenAccent,
            appBar: AppBar(
              title: Text("SIGN IN"),
            ),
            body:Login(),

        ),

        );
  }
}
