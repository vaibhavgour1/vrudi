import 'package:flutter/material.dart';
import 'package:vrudi/ui/createnewproject/create_new_project.dart';
import 'package:vrudi/ui/tasklist/task_list.dart';

class NewProject extends StatefulWidget {
  const NewProject({Key? key}) : super(key: key);

  @override
  _NewProjectState createState() => _NewProjectState();
}

class _NewProjectState extends State<NewProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.40),
        child: Center(
          child: Column(
            children: [
              MaterialButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context, MaterialPageRoute(builder: (context) => const TaskList()), (route) => true);
                },
                color: Colors.orange,
                height: 50,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  "   New Project   ",
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context, MaterialPageRoute(builder: (context) => const CreateNewProject()), (route) => true);
                },
                color: Colors.orange,
                height: 50,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  "   Use Template   ",
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
