import 'package:app_name/homepage.dart';
import 'package:app_name/profile%20page.dart';
import 'package:flutter/material.dart';

class Mymenu extends StatefulWidget {


  @override
  _MymenuState createState() => _MymenuState();
}

class _MymenuState extends State<Mymenu> {
  int _mycurrentIndex=0;
  List pages=[Homepage(),Profilepage()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("HOME"),
        ),
        body: pages[_mycurrentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              _mycurrentIndex=index;

            });
            print(index);

          },
          backgroundColor: Colors.white,
          currentIndex: _mycurrentIndex,

          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
            label: "home"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
              label: "profile"
            ),

          ],//items
        ),

      ),

    );
  }
}
