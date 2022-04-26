import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vrudi/ui/forgetpassword/forgetpassword.dart';
import 'package:vrudi/ui/login/login_scren.dart';

import 'package:vrudi/utility/validator.dart';

class SelectFavScreen extends StatefulWidget {
  const SelectFavScreen({Key? key}) : super(key: key);

  @override
  State<SelectFavScreen> createState() => _SelectFavScreenState();
}

class _SelectFavScreenState extends State<SelectFavScreen> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Image.asset(
                "assets/images/bg.jpg",
                fit: BoxFit.cover,
                width: deviceWidth,
                height: deviceHeight,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/images/trans_logo.png",
                        height: deviceHeight * 0.40,
                      ),
                    ),
                    SizedBox(
                      height: deviceHeight * 0.05,
                    ),
                    Container(
                      height: 50,
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        validator: (numb) => Validator.passwordValidator(numb!),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        inputFormatters: [
                          FilteringTextInputFormatter.singleLineFormatter
                        ],
                        controller: passwordController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromRGBO(242, 242, 242, 1),
                          counterText: "",
                          hintText: "Email Id",
                          prefixIcon:
                              const Icon(Icons.mail, color: Colors.black),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          prefixIconConstraints: const BoxConstraints(
                              minWidth: 50,
                              minHeight: 25,
                              maxWidth: 51,
                              maxHeight: 25),
                          // errorText: Validator.validateMobile(edtMobile.text, context),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      child: TextFormField(
                        readOnly: true,
                        onTap: () {
                          bottomSheet();
                        },
                        controller: confirmPasswordController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromRGBO(242, 242, 242, 1),
                          counterText: "",
                          hintText: "Select Favourite Color",
                          prefixIcon: const Icon(Icons.arrow_drop_down,
                              color: Colors.black),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          prefixIconConstraints: const BoxConstraints(
                              minWidth: 50,
                              minHeight: 25,
                              maxWidth: 51,
                              maxHeight: 25),
                          // errorText: Validator.validateMobile(edtMobile.text, context),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MaterialButton(
        minWidth: deviceWidth,
        height: 50,
        padding: const EdgeInsets.all(8.0),
        textColor: Colors.white,
        color: Colors.orange,
        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const ForgetScreen()),
              (route) => false);
        },
        child: const Text(
          "Done",
          style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none),
        ),
      ),
    );
  }

  void bottomSheet() {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        builder: (context) {
          return Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: new Icon(Icons.photo),
                  title: new Text('Photo'),
                  onTap: () {
                    confirmPasswordController.text = "Photo";
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: new Icon(Icons.music_note),
                  title: new Text('Music'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: new Icon(Icons.videocam),
                  title: new Text('Video'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: new Icon(Icons.share),
                  title: new Text('Share'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          );
        });
  }
}
