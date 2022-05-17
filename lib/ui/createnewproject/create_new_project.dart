import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vrudi/ui/home/home.dart';
import 'package:vrudi/utility/validator.dart';

class CreateNewProject extends StatefulWidget {
  const CreateNewProject({Key? key}) : super(key: key);

  @override
  _CreateNewProjectState createState() => _CreateNewProjectState();
}

class _CreateNewProjectState extends State<CreateNewProject> {
  bool check = false;
  TextEditingController projectName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          const Center(
            child: Text(
              "Create New Project",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            validator: (numb) => Validator.passwordValidator(numb!),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
            controller: projectName,
            decoration: const InputDecoration(
              filled: true,
              fillColor: Color.fromRGBO(242, 242, 242, 1),
              counterText: "",
              hintText: "Please Enter project Name",
              prefixIcon: Icon(Icons.key, color: Colors.black),

              prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
              // errorText: Validator.validateMobile(edtMobile.text, context),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("project Type   ", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              Container(
                width: deviceWidth * 0.55,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Select", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_down))
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Frequency type", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              Container(
                width: deviceWidth * 0.55,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Select", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_down))
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("No of Occurence", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              Container(
                width: deviceWidth * 0.55,
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  validator: (numb) => Validator.passwordValidator(numb!),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                  controller: projectName,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(242, 242, 242, 1),
                    counterText: "",
                    hintText: "Please Enter project Name",
                    prefixIcon: Icon(Icons.key, color: Colors.black),

                    prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                    // errorText: Validator.validateMobile(edtMobile.text, context),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Price/occurence", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              Container(
                width: deviceWidth * 0.55,
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  validator: (numb) => Validator.passwordValidator(numb!),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                  controller: projectName,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(242, 242, 242, 1),
                    counterText: "",
                    hintText: "Please Enter project Name",
                    prefixIcon: Icon(Icons.key, color: Colors.black),

                    prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                    // errorText: Validator.validateMobile(edtMobile.text, context),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Assign to", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              Container(
                width: deviceWidth * 0.55,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Select", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_down))
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Client", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              Container(
                width: deviceWidth * 0.55,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Select", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_down))
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: deviceWidth * 0.45,
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  validator: (numb) => Validator.passwordValidator(numb!),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                  controller: projectName,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(242, 242, 242, 1),
                    counterText: "",
                    hintText: "End Date",
                    prefixIcon: Icon(Icons.key, color: Colors.black),

                    prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                    // errorText: Validator.validateMobile(edtMobile.text, context),
                  ),
                ),
              ),
              Container(
                width: deviceWidth * 0.45,
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  validator: (numb) => Validator.passwordValidator(numb!),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                  controller: projectName,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(242, 242, 242, 1),
                    counterText: "",
                    hintText: "Start Date",
                    prefixIcon: Icon(Icons.key, color: Colors.black),

                    prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                    // errorText: Validator.validateMobile(edtMobile.text, context),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text("Add Task", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          SizedBox(
            height: 10,
          ),
          Row(children: [
            Checkbox(
                value: check,
                onChanged: (value) {
                  check = value!;
                  setState(() {});
                }),
            Text(
              "${"Collect Information"}",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ]),
          SizedBox(
            height: 5,
          ),
          Row(children: [
            Checkbox(
                value: check,
                onChanged: (value) {
                  check = value!;
                  setState(() {});
                }),
            Text(
              "${"Make Concept"}",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ]),
          SizedBox(
            height: 5,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          SizedBox(
            height: 10,
          ),
          MaterialButton(
            minWidth: deviceWidth * 0.95,
            height: 50,
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.white,
            color: Colors.orange,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            onPressed: () {
              Navigator.pop(context);
              // Navigator.pushAndRemoveUntil(
              //     context, MaterialPageRoute(builder: (context) => const HomeScreen()), (route) => true);
            },
            child: const Text(
              "Create Project",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600, decoration: TextDecoration.none),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          MaterialButton(
            minWidth: deviceWidth * 0.95,
            height: 50,
            padding: const EdgeInsets.all(8.0),
            color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context, MaterialPageRoute(builder: (context) => const HomeScreen()), (route) => true);
            },
            child: const Text(
              "Save As template",
              style: TextStyle(
                  fontSize: 19, color: Colors.black, fontWeight: FontWeight.w600, decoration: TextDecoration.none),
            ),
          ),
        ],
      ),
    )));
  }
}
