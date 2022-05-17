import 'package:flutter/material.dart';
import 'package:vrudi/ui/tasklist/task_list.dart';

class AddTask extends StatefulWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 60,
          ),
          const Text(
            "Make Tea",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Icon(
                Icons.calendar_today,
                color: Colors.grey.shade600,
              ),
              const Text(
                "  20-04-2022 to 25-04-2022",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Icon(
                Icons.menu_open_rounded,
                color: Colors.grey.shade600,
              ),
              const Text(
                "  GSTR 3B - ABC Ltd - June",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Icon(
                Icons.person_add_alt_1_rounded,
                color: Colors.grey.shade600,
              ),
              const SizedBox(
                width: 50,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(300.0),
                  child: Image.asset(
                    "assets/images/bg.jpg",
                    height: 25,
                  )),
              const Text(
                "   Ramesh ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(300.0),
                  child: Image.asset(
                    "assets/images/bg.jpg",
                    height: 25,
                  )),
              const Text(
                " Suresh ",
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Icon(
                Icons.currency_rupee,
                color: Colors.black,
              ),
              const Text(
                "  5000.00",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: MaterialButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context, MaterialPageRoute(builder: (context) => const TaskList()), (route) => true);
              },
              color: Colors.orange,
              height: 50,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: const Text(
                "   Add Task   ",
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
