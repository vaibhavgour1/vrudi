import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vrudi/ui/clientinputform/client_form.dart';

class ClientList extends StatefulWidget {
  @override
  _ClientListState createState() => _ClientListState();
}

class _ClientListState extends State<ClientList> {
  List ClientName = ["ABC Ltd", "XYZ Entrprise", "LOL mainia", "Chotiwala", "Suresh", "Revenues"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Client List',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
      ),
      body: Container(
        //  height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.all(15),
        child: ListView.builder(itemBuilder: (BuildContext context,int index){
          return Column(
              children:[ InkWell(
                onTap: (){
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (builder)=>ClientForm()), (route) => true);
                },
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 30),
                  title: Text('${ClientName[index]}',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                ),
              ),
                Divider(thickness: 1,color: Colors.grey.shade300),
              ]
          );
        },

            itemCount: ClientName.length),
      ),
    );
  }
}
