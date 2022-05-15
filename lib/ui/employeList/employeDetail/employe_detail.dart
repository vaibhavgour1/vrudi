
import 'package:flutter/material.dart';

class EmployeeDetail extends StatefulWidget {
  @override
  _EmployeeDetailState createState() => _EmployeeDetailState();
}

class _EmployeeDetailState extends State<EmployeeDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: const Text('Employee Detail',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),

      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [const Text('Suresh Raina',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),const Text('Profile',style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),],
            ),

             Container(
               margin: EdgeInsets.only(top: 10,bottom: 20),
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10),

                 boxShadow:[ BoxShadow(

                   offset: const Offset(0.0,0.0),
                   blurRadius: 2,
                   color: Colors.grey.shade500,
                 )]
               ),
               child: ExpansionTile(


                title:  Text(
                  "Attendance",
                  style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),

                children: [

                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                   Text("Absent", style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600,color: Colors.black54),
                   ),
                   Text("03", style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                   ),
                   Text("Half Day", style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600,color: Colors.black54),
                   ),
                   Text("00", style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,),
                   )

                 ], ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Absent", style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600,color: Colors.black54),
                      ),
                      Text("03", style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      Text("Half Day", style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600,color: Colors.black54),
                      ),
                      Text("00", style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,),
                      )

                    ], ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Absent", style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600,color: Colors.black54),
                      ),
                      Text("03", style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      Text("Half Day", style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600,color: Colors.black54),
                      ),
                      Text("00", style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,),
                      )

                    ], ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Absent", style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600,color: Colors.black54),
                      ),
                      Text("03", style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      Text("Half Day", style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600,color: Colors.black54),
                      ),
                      Text("00", style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,),
                      )

                    ], ),
                  SizedBox(height: 10,),

                ],
            ),
             ),

            Container(
              margin: EdgeInsets.only(top: 10,bottom: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),

                  boxShadow:[ BoxShadow(

                    offset: const Offset(0.0,0.0),
                    blurRadius: 2,
                    color: Colors.grey.shade500,
                  )]
              ),
              child: ExpansionTile(


                title:  Text(
                  "Salaries",
                  style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),

                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Payable", style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600,color: Colors.black54),
                      ),
                      Text("\u20B9 10,000", style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      Text("Last Paid", style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600,color: Colors.black54),
                      ),
                      Text("\u20B9 10,000", style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,),
                      )

                    ], ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Advance", style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600,color: Colors.black54),
                      ),
                      Text("\u20B9 10,000", style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      Text(" Upheld", style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600,color: Colors.black54),
                      ),
                      Text("\u20B9 10,000", style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,),
                      )

                    ], ),
                  SizedBox(height: 10,),


                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10,bottom: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),

                  boxShadow:[ BoxShadow(

                    offset: const Offset(0.0,0.0),
                    blurRadius: 2,
                    color: Colors.grey.shade500,
                  )]
              ),
              child: ExpansionTile(


                title:  Text(
                  "Work",
                  style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),

                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("To Do ", style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600,color: Colors.black54),
                      ),
                      Text("03", style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      Text("Completed", style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600,color: Colors.black54),
                      ),
                      Text("00", style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,),
                      )

                    ], ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("In Progress", style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600,color: Colors.black54),
                      ),
                      Text("24", style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      Text("Undue", style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600,color: Colors.black54),
                      ),
                      Text("16", style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,),
                      )

                    ], ),
                  SizedBox(height: 10,),


                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10,bottom: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),

                  boxShadow:[ BoxShadow(

                    offset: const Offset(0.0,0.0),
                    blurRadius: 2,
                    color: Colors.grey.shade500,
                  )]
              ),
              child: ExpansionTile(


                title:  Text(
                  "Salary Slips",
                  style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),

                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("May,2022", style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600,color: Colors.black54),
                      ),
                      Text("View", style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,color: Colors.green),
                      ),
                      SizedBox(),
                      SizedBox(),


                    ], ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("May,2022", style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600,color: Colors.black54),
                      ),
                      Text("View", style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,color: Colors.green),
                      ),
                      SizedBox(),
                      SizedBox(),


                    ], ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("May,2022", style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600,color: Colors.black54),
                      ),
                      Text("View", style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,color: Colors.green),
                      ),
                      SizedBox(),
                      SizedBox(),


                    ], ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("May,2022", style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600,color: Colors.black54),
                      ),
                      Text("View", style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,color: Colors.green),
                      ),
                      Text("View All", style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,color: Colors.black54),
                      ),


                    ], ),
                  SizedBox(height: 10,),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
