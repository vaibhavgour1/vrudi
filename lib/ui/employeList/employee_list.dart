import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vrudi/ui/drawer/drawer.dart';
import 'package:vrudi/ui/employeList/employeDetail/employe_detail.dart';
class EmployeList extends StatefulWidget {
  @override
  _EmployeListState createState() => _EmployeListState();
}

class _EmployeListState extends State<EmployeList> {
  List employeName = ["Suresh", "Suresh", "Suresh", "Suresh", "Suresh", "Revenues"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee List',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
      ),
      body: Container(
      //  height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.all(15),
        child: ListView.builder(itemBuilder: (BuildContext context,int index){
          return Column(
            children:[ InkWell(
              onTap: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (builder)=>EmployeeDetail()), (route) => true);
              },
              child: ListTile(
                contentPadding: EdgeInsets.only(left: 30),
                title: Text('${employeName[index]}',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              ),
            ),
            Divider(thickness: 1,color: Colors.grey.shade300),
            ]
          );
        },

            itemCount: employeName.length),
      ),
    );
  }
}
