
import 'package:app_name/Register.dart';
import 'package:app_name/view.dart';
import 'package:flutter/material.dart';



class Login extends StatelessWidget {

  TextEditingController uname=TextEditingController();
  TextEditingController pass=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:Container(
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

                ),
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
                color: Colors.pinkAccent,
                onPressed:() {
                  var getUsername=uname.text;
                  var getPassword=pass.text;
                  print(getUsername);
                  print(getPassword);
                  print("login button clicked");

                },

                child: Text("LOGIN",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ) ,
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: RaisedButton(
                color: Colors.purpleAccent,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Register() ));

              },
                child: Text("REGISTER",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
              ),
            ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: RaisedButton(
                color: Colors.purpleAccent,
                onPressed:(){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewStudents()));
              },
                child: Text("VIEW STUDENTS",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
              ),
            ),
            ),
          ], //children
        ),
      ),
    );

  }
}

