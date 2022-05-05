import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EmployeeForm extends StatefulWidget {
  const EmployeeForm({Key? key}) : super(key: key);

  @override
  _EmployeeFormState createState() => _EmployeeFormState();
}

class _EmployeeFormState extends State<EmployeeForm> {
  TextEditingController employeNameController = TextEditingController();
  TextEditingController permanentAddressController = TextEditingController();
  TextEditingController currentAddressController = TextEditingController();
  TextEditingController personalEmailController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController emergencyContactNumberController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();
  TextEditingController adharNumberController = TextEditingController();
  TextEditingController panController = TextEditingController();
  TextEditingController bankAccountController = TextEditingController();
  TextEditingController ifscController = TextEditingController();
  TextEditingController bankNameController = TextEditingController();
  int _character = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 40),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                controller: employeNameController,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(242, 242, 242, 1),
                  counterText: "",
                  hintText: "Employee Name",
                  hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),
                  prefixIcon: Icon(Icons.person, color: Colors.black),

                  prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                  // errorText: Validator.validateMobile(edtMobile.text, context),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                controller: permanentAddressController,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(242, 242, 242, 1),
                  counterText: "",
                  hintText: "Permanent Address",
                  hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),
                  prefixIcon: Icon(Icons.location_on, color: Colors.black),

                  prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                  // errorText: Validator.validateMobile(edtMobile.text, context),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                controller: currentAddressController,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(242, 242, 242, 1),
                  counterText: "",
                  hintText: "Current Address",
                  hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),
                  prefixIcon: Icon(Icons.location_on, color: Colors.black),

                  prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                  // errorText: Validator.validateMobile(edtMobile.text, context),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.40,
                    child: ListTile(
                      title: const Text('Male'),
                      leading: Radio<int>(
                        value: 1,
                        groupValue: _character,
                        onChanged: (value) {
                          log("===>$_character");
                          setState(() {
                            _character = value!;
                          });
                        },
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.40,
                    child: ListTile(
                      title: const Text('Female'),
                      contentPadding: EdgeInsets.all(0),
                      leading: Radio<int>(
                        value: 0,
                        groupValue: _character,
                        onChanged: (value) {
                          log("===>$_character");
                          setState(() {
                            _character = value!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                controller: personalEmailController,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(242, 242, 242, 1),
                  counterText: "",
                  hintText: "Personal Email",
                  hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),
                  prefixIcon: Icon(Icons.email, color: Colors.black),

                  prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                  // errorText: Validator.validateMobile(edtMobile.text, context),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                controller: mobileNumberController,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(242, 242, 242, 1),
                  counterText: "",
                  hintText: "Mobile Number",
                  hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),
                  prefixIcon: Icon(Icons.mobile_friendly, color: Colors.black),

                  prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                  // errorText: Validator.validateMobile(edtMobile.text, context),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                controller: emergencyContactNumberController,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(242, 242, 242, 1),
                  counterText: "",
                  hintText: "Emergency Contact Number",
                  hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),
                  prefixIcon: Icon(Icons.mobile_screen_share, color: Colors.black),

                  prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                  // errorText: Validator.validateMobile(edtMobile.text, context),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                controller: dateOfBirthController,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(242, 242, 242, 1),
                  counterText: "",
                  hintText: "Date of Birth",
                  hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),

                  prefixIcon: Icon(Icons.calendar_today_sharp, color: Colors.black),

                  prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                  // errorText: Validator.validateMobile(edtMobile.text, context),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                controller: adharNumberController,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(242, 242, 242, 1),
                  counterText: "",
                  hintText: "AADHAAR Number",
                  hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),

                  prefixIcon: Icon(Icons.person_add_alt_1, color: Colors.black),

                  prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                  // errorText: Validator.validateMobile(edtMobile.text, context),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                controller: panController,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(242, 242, 242, 1),
                  counterText: "",
                  hintText: "PAN Number",
                  hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),

                  prefixIcon: Icon(Icons.person_add_alt_1, color: Colors.black),

                  prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                  // errorText: Validator.validateMobile(edtMobile.text, context),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                controller: bankAccountController,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(242, 242, 242, 1),
                  counterText: "",
                  hintText: "Bank Account Number",
                  hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),

                  prefixIcon: Icon(Icons.account_balance, color: Colors.black),

                  prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                  // errorText: Validator.validateMobile(edtMobile.text, context),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                controller: ifscController,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(242, 242, 242, 1),
                  counterText: "",
                  hintText: "IFSC Code",
                  hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),

                  prefixIcon: Icon(Icons.account_balance_wallet_outlined, color: Colors.black),

                  prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                  // errorText: Validator.validateMobile(edtMobile.text, context),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                controller: bankNameController,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(242, 242, 242, 1),
                  counterText: "",
                  hintText: "Bank Name",
                  hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),

                  prefixIcon: Icon(Icons.account_circle_outlined, color: Colors.black),

                  prefixIconConstraints: BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                  // errorText: Validator.validateMobile(edtMobile.text, context),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MaterialButton(
        onPressed: () {},
        color: Colors.orange,
        height: 50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        child: Text(
          "Update",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }
}
