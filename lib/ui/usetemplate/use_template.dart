import 'package:flutter/material.dart';
import 'package:vrudi/ui/addtask.dart/add_task.dart';

class UseTemplate extends StatefulWidget {
  const UseTemplate({Key? key}) : super(key: key);

  @override
  _UseTemplateState createState() => _UseTemplateState();
}

class _UseTemplateState extends State<UseTemplate> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Center(
            child: Text(
              "Use Template",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 300,
            child: ListView.builder(
              primary: false,
              itemCount: 5,
              itemBuilder: ((context, index) {
                return Center(
                  child: Row(children: [
                    Checkbox(
                        value: check,
                        onChanged: (value) {
                          check = value!;
                          setState(() {});
                        }),
                    Text(
                      "Project Template $index",
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ]),
                );
              }),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context, MaterialPageRoute(builder: (context) => const AddTask()), (route) => false);
            },
            color: Colors.orange,
            height: 50,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: const Text(
              "Create Project",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
            ),
          ),
        ],
      ),
    ));
  }
}
