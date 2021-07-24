import 'package:flutter/material.dart';

class Studententry extends StatefulWidget {


  @override
  _StudententryState createState() => _StudententryState();
}

class _StudententryState extends State<Studententry> {
  TextEditingController name=TextEditingController();
  TextEditingController rollno=TextEditingController();

  List studname=[];
  List roll=[];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("STUDENT ENTRY"),
        ),
        body: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  TextField(
                    controller: name,
                    decoration: InputDecoration(
                        labelText: "Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                    ),
                  ),
                  TextField(
                    controller:rollno ,
                    decoration: InputDecoration(
                      labelText: "rollno:",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                    ),

                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: RaisedButton(
                      color: Colors.lightGreen,
                      onPressed:(){
                        var getName=name.text;
                        var getRollno=rollno.text;
                        setState(() {
                          studname.add(getName);
                          roll.add(getRollno);
                        });
                        print(getName);
                        print(getRollno);


                      },
                      child: Text("ADD",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: studname.length==null? 0 :studname.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          leading: Icon(Icons.account_circle,color: Colors.purpleAccent,size: 25,),
                          trailing: GestureDetector(
                            onTap: (){
                              print("delete clicked"+index.toString());
                              setState(() {
                                studname.removeAt(index);
                                roll.removeAt(index);

                              });
                            },
                              child: Icon(Icons.delete,color: Colors.pinkAccent,size: 25,)),
                          title: Text(studname[index]),
                          subtitle: Text("Rollno:"+roll[index]),
                        ),
                      );

                    },)


                ],//children
              ),
            ),
        ),

          ),



    );
  }
}


