import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

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
  TextEditingController basicsalaryController = TextEditingController();
  TextEditingController hraController = TextEditingController();
  TextEditingController monthlyAllowanceController = TextEditingController();
  TextEditingController addhaarController = TextEditingController();
  TextEditingController salerydueDateController = TextEditingController();
  TextEditingController employeetypeController = TextEditingController();
  TextEditingController employeeStatusController = TextEditingController();
  TextEditingController joiningdateController = TextEditingController();
  int _character = -1;
  File? profileImage;
  File? addhaarImage;
  File? panImage;
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
                      contentPadding: const EdgeInsets.all(0),
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
              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "Attach Passport Photo",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: profileImage != null
                        ? Image(
                            image: FileImage(profileImage!), width: double.infinity, height: 250, fit: BoxFit.contain)
                        : const Image(
                            image: AssetImage('assets/images/yellow_logo.png'),
                            width: double.infinity,
                            height: 50,
                            fit: BoxFit.cover),
                  ),
                  onTap: () {
                    FocusScope.of(context).unfocus();
                    log("$profileImage");

                    showBottomSheet(2, context);
                    setState(() {});
                  }),
              const SizedBox(
                height: 15,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "Attach Aadhar Photo",
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: addhaarImage != null
                        ? Image(
                            image: FileImage(addhaarImage!), width: double.infinity, height: 250, fit: BoxFit.contain)
                        : const Image(
                            image: AssetImage('assets/images/yellow_logo.png'),
                            width: double.infinity,
                            height: 50,
                            fit: BoxFit.cover),
                  ),
                  onTap: () {
                    FocusScope.of(context).unfocus();
                    log("$addhaarImage");

                    showBottomSheet(2, context);
                    setState(() {});
                  }),
              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "Attach Pan Photo",
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: panImage != null
                        ? Image(image: FileImage(panImage!), width: double.infinity, height: 250, fit: BoxFit.contain)
                        : const Image(
                            image: AssetImage('assets/images/yellow_logo.png'),
                            width: double.infinity,
                            height: 50,
                            fit: BoxFit.cover),
                  ),
                  onTap: () {
                    FocusScope.of(context).unfocus();
                    log("$panController");

                    showBottomSheet(3, context);
                    setState(() {});
                  }),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                controller: basicsalaryController,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(242, 242, 242, 1),
                  counterText: "",
                  hintText: "Basic Salary",
                  hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),

                  prefixIcon: Icon(Icons.currency_rupee, color: Colors.black),

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
                controller: hraController,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(242, 242, 242, 1),
                  counterText: "",
                  hintText: "HRA",
                  hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),

                  prefixIcon: Icon(Icons.currency_rupee, color: Colors.black),

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
                controller: monthlyAllowanceController,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(242, 242, 242, 1),
                  counterText: "",
                  hintText: "Monthly Allowances",
                  hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),

                  prefixIcon: Icon(Icons.currency_rupee, color: Colors.black),

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
                controller: salerydueDateController,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(242, 242, 242, 1),
                  counterText: "",
                  hintText: "Salary Due date every month",
                  hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),

                  prefixIcon: Icon(Icons.attach_money, color: Colors.black),

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
                controller: employeetypeController,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(242, 242, 242, 1),
                  counterText: "",
                  hintText: "Emplyee Type",
                  hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),

                  prefixIcon: Icon(Icons.person_pin, color: Colors.black),

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
                controller: employeeStatusController,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(242, 242, 242, 1),
                  counterText: "",
                  hintText: "Employee Status",
                  hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),

                  prefixIcon: Icon(Icons.person_remove, color: Colors.black),

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
                controller: joiningdateController,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(242, 242, 242, 1),
                  counterText: "",
                  hintText: "Joining date",
                  hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),

                  prefixIcon: Icon(Icons.calendar_today_sharp, color: Colors.black),

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
        onPressed: () {
          Navigator.pop(context);
        },
        color: Colors.orange,
        height: 50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        child: const Text(
          "Update",
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }

  selectImage(int source, int imageType) async {
    PickedFile pickedFile;
    if (source == 1) {
      // ignore: deprecated_member_use
      pickedFile = (await ImagePicker().getImage(source: ImageSource.camera, imageQuality: 70))!;
    } else {
      // ignore: deprecated_member_use
      pickedFile = (await ImagePicker().getImage(source: ImageSource.gallery, imageQuality: 70))!;
    }
    switch (imageType) {
      case 1:
        profileImage = File(pickedFile.path);
        break;
      case 2:
        addhaarImage = File(pickedFile.path);
        break;
      case 3:
        panImage = File(pickedFile.path);
        break;
    }
    log("$imageType");
    setState(() {});
  }

  showBottomSheet(int imageType, BuildContext context) {
    showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) {
          return CupertinoActionSheet(
            actions: [
              CupertinoActionSheetAction(
                onPressed: () {
                  selectImage(1, imageType);
                  Navigator.pop(context);
                },
                child: const Text('Camera',
                    style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600)),
              ),
              CupertinoActionSheetAction(
                onPressed: () {
                  selectImage(2, imageType);
                  Navigator.pop(context);
                },
                child: const Text('Gallery',
                    style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600)),
              ),
            ],
            cancelButton: CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
                // Navigator.pop(context);
              },
              child: const Text('Cancel',
                  style: const TextStyle(color: Color(0xfff92d28), fontSize: 16, fontWeight: FontWeight.w600)),
            ),
          );
        });
  }
}
