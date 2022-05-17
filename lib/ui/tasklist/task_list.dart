import 'package:flutter/material.dart';
import 'package:vrudi/ui/addtask.dart/add_task.dart';

class TaskList extends StatefulWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  bool check = false;
  List<String> name = ["Make tea", "Eat breakfast", "Pack Lunch", "Make tea", "Eat breakfast", "Pack Lunch"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Routine ",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Today ",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.filter_list_alt)
                  ],
                ),
              ],
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
                        "${name[index]}",
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ]),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context, MaterialPageRoute(builder: (context) => const AddTask()), (route) => true);
          }),
    );
  }
}
