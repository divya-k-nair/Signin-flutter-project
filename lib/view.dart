import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ViewStudents extends StatelessWidget {
  var names=["divya","neethu","gayathri","aayana","rayan","aravind","shyam","shilpa","gouri","til"];
  var rollno=[1,2,3,4,5,6,7,8,9,10];
  var admissionno=[0123,0124,0125,0126,0127,0128,0129,0130,0131,0132];
  var college=["sbce","sbce","sbce","sbce","sbce","sbce","sbce","sbce","sbce","sbce"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       backgroundColor: Colors.cyanAccent,
        appBar: AppBar(
          title: Text("VIEW STUDENTS"),
        ),
        body:Container(
          child: ListView.builder(
            itemCount: names.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Icon(Icons.account_circle,size: 60,color: Colors.blueAccent,),
                    trailing: Icon(Icons.delete,color: Colors.purpleAccent,size: 40,),
                    title: Text(names[index]),
                    subtitle: Text("Rollno:"+rollno[index].toString()+"\n"+"Admission no:"+admissionno[index].toString()+"\n"+"college:"+college[index]),
                  ),
                );
              },//item builder





        ),

          ),
      )
        );




  }
}
