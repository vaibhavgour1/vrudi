import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vrudi/ui/employeList/employee_list.dart';
import 'package:vrudi/ui/holidays_detail/leaves_setup/list_of_leave.dart';
class HrmsHome extends StatefulWidget {
  @override
  _HrmsHomeState createState() => _HrmsHomeState();
}

class _HrmsHomeState extends State<HrmsHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('HRMS',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
    ),body: Container(
      margin: EdgeInsets.only(left: 20,right: 20,top: 20),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            height: 50,
            alignment: Alignment.center,
            child: Text(
              "Salaries",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  offset: const Offset(0.0, 0.0), //(x,y)
                  blurRadius: 2.0,
                ),
              ],
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          InkWell(
            onTap:(){
              Navigator.pushAndRemoveUntil(
                  context, MaterialPageRoute(builder: (context) =>  EmployeList()), (route) => true);
            },
            child: Container(
              margin: EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              height: 50,
              child: Text(
                "Employees",
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              decoration: BoxDecoration(
                color: Colors.yellow,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    offset: const Offset(0.0, 0.0), //(x,y)
                    blurRadius: 2.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          InkWell(
            onTap:(){
              Navigator.pushAndRemoveUntil(
                  context, MaterialPageRoute(builder: (context) =>  LeaveSetupList()), (route) => true);
            },
            child: Container(
              margin: EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              height: 50,
              child: Text(
                "Holidays",
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              decoration: BoxDecoration(
                color: Colors.yellow,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    offset: const Offset(0.0, 0.0), //(x,y)
                    blurRadius: 2.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            height: 50,
            child: Text(
              "Attendance",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  offset: const Offset(0.0, 0.0), //(x,y)
                  blurRadius: 2.0,
                ),
              ],
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            height: 50,
            child: Text(
              "Requests",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  offset: const Offset(0.0, 0.0), //(x,y)
                  blurRadius: 2.0,
                ),
              ],
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            height: 50,
            child: Text(
              "Salary Slips",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  offset: const Offset(0.0, 0.0), //(x,y)
                  blurRadius: 2.0,
                ),
              ],
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ],
      ),
    ));
  }
}
