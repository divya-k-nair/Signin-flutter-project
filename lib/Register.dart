import 'package:app_name/main.dart';
import 'package:flutter/material.dart';
class  Register extends StatelessWidget {

  TextEditingController name=TextEditingController();
  TextEditingController addr=TextEditingController();
  TextEditingController mob=TextEditingController();
  TextEditingController clg=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController uname=TextEditingController();
  TextEditingController pwd=TextEditingController();
  TextEditingController cpwd=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          title: Text("REGISTER"),
        ),
        body:SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 20,),
                TextField(
                  controller: name ,
                  decoration: InputDecoration(
                    prefix: CircularProgressIndicator(),
                    prefixIcon: Icon(Icons.account_circle,color: Colors.deepOrange,size: 40,),
                    labelText: "Name",
                    hintText: "Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: addr,
                  decoration: InputDecoration(
                      hintText: "Address",
                      labelText: "Address",
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.account_balance,color: Colors.green,size: 40,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: mob,
                  decoration: InputDecoration(
                    prefix: CircularProgressIndicator(),
                    prefixIcon: Icon(Icons.add_call,color: Colors.purpleAccent,size: 40,),
                    labelText: "Mobile no:",
                    hintText: "Mobile no:",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: clg,
                  decoration: InputDecoration(
                    prefix: CircularProgressIndicator(),
                    prefixIcon: Icon(Icons.account_balance,color: Colors.lime,size: 40,),
                    labelText: "College",
                    hintText: "College",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: email,
                  decoration: InputDecoration(
                    hintText: "Email id",
                    labelText: "Email id",
                    prefix: CircularProgressIndicator(),
                    prefixIcon: Icon(Icons.email,color: Colors.cyanAccent,size: 40,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: uname,
                  decoration: InputDecoration(
                    prefix: CircularProgressIndicator(),
                    prefixIcon: Icon(Icons.accessibility_new_outlined,color: Colors.pinkAccent,size: 40,),
                    hintText: "Username",
                    labelText: "Username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  obscureText: true,
                  controller: pwd,
                  decoration: InputDecoration(
                    helperText: "password should contain one small letter",
                    prefix: CircularProgressIndicator(),
                    prefixIcon: Icon(Icons.visibility_off_rounded,color: Colors.purple,size: 40,),
                    hintText: "Password",
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                TextField(
                  obscureText: true,
                  controller: cpwd,
                  decoration:InputDecoration(
                    prefix: CircularProgressIndicator(),
                    prefixIcon: Icon(Icons.visibility_off_rounded,color: Colors.pinkAccent,size: 40,),
                    hintText: "Confirm password",
                    labelText: "Confirm password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ) ,
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.redAccent,
                    onPressed: (){
                      var getName=name.text;
                      var getAddress=addr.text;
                      var getMobile=mob.text;
                      var getCollege=clg.text;
                      var getEmail=email.text;
                      var getUsername=uname.text;
                      var getPassword=pwd.text;
                      var getCpassword=cpwd.text;
                      print(getName);
                      print(getAddress);
                      print(getMobile);
                      print(getCollege);
                      print(getEmail);
                      print(getUsername);
                      print(getPassword);
                      print(getCpassword);

                      print("registered");

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
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>App()));

                      },
                      child: Text("BACK TO LOGIN ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),

                    ),
                ),
                ),
                SizedBox(height: 20,),

              ],//children
            ),
          ),
        ),

      ),

    );


  }
}
