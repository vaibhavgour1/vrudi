import 'package:flutter/material.dart';

class LeaveSetupList extends StatefulWidget {
  const LeaveSetupList({Key? key}) : super(key: key);

  @override
  State<LeaveSetupList> createState() => _LeaveSetupListState();
}

class _LeaveSetupListState extends State<LeaveSetupList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Leaves Setup"),
        centerTitle: true,
      ),
      body: Container(
child: ListView.builder(itemCount: 4,padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),itemBuilder: (context, index){
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Paid Leave"),
          IconButton(onPressed: (){}, icon: Icon(Icons.edit))
        ],
      ),
      Container(
        height: 1,
        color: Colors.grey,
      )
    ],
  );
})),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
      ),
    );
  }
}
