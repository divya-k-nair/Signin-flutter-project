import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()
{
  runApp(App());
}
class App extends StatelessWidget {
  TextEditingController uname=TextEditingController();
  TextEditingController pass=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text("SIGN IN"),
            ),
            body: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text("Username"),
                  SizedBox(height: 20,),
                  TextField(
                    controller: uname,
                    decoration: InputDecoration(
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.account_box),
                      labelText: "Username",
                      hintText:( "enter the username"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Password"),
                  SizedBox(height: 20,),
                  TextField(
                    controller: pass,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: "Password",
                      hintText: ("enter the password"),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        
                      )
                    ),
                  ),
                  SizedBox(height: 30,),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child:RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      color: Colors.blue,
                      onPressed:() {
                        var getUsername=uname.text;
                        var getPassword=pass.text;
                        print(getUsername);
                        print(getPassword);

                      },

                      child: Text("LOGIN",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                    ) ,
                  ),
                  ),


                ], //children
                  ),
              ),
            ),

        );
  }
}
