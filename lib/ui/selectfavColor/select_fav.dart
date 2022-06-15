import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vrudi/ui/login/login_scren.dart';
import 'package:vrudi/ui/selectfavColor/select_fav_bloc.dart';
import 'package:vrudi/ui/selectfavColor/select_fav_event.dart';
import 'package:vrudi/ui/selectfavColor/select_fav_state.dart';
import 'package:vrudi/utility/utilty.dart';
import 'package:vrudi/utility/validator.dart';

class SelectFavScreen extends StatefulWidget {
  const SelectFavScreen({Key? key}) : super(key: key);

  @override
  State<SelectFavScreen> createState() => _SelectFavScreenState();
}

class _SelectFavScreenState extends State<SelectFavScreen> {
  TextEditingController passwordNewController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  TextEditingController emailController = TextEditingController();
  TextEditingController favcolorController = TextEditingController();
  SelectFavBloc selectFavBloc = SelectFavBloc();
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return BlocProvider<SelectFavBloc>(
      create: (context) => selectFavBloc,
      child: Scaffold(
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
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        validator: (numb) => Validator.passwordValidator(numb!),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                        controller: emailController,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(242, 242, 242, 1),
                          counterText: "",
                          hintText: "Email Id",
                          prefixIcon: Icon(Icons.mail, color: Colors.black),

                          prefixIconConstraints:
                              BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                          // errorText: Validator.validateMobile(edtMobile.text, context),
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
                        controller: passwordNewController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromRGBO(242, 242, 242, 1),
                          counterText: "",
                          hintText: "Enter Confirm Password",
                          prefixIcon: const Icon(Icons.key, color: Colors.black),
                          border:
                              OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                          enabledBorder:
                              OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                          disabledBorder:
                              OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                          focusedBorder:
                              OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                          errorBorder:
                              OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                          focusedErrorBorder:
                              OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                          prefixIconConstraints:
                              const BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                          // errorText: Validator.validateMobile(edtMobile.text, context),
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
                        controller: confirmPasswordController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromRGBO(242, 242, 242, 1),
                          counterText: "",
                          hintText: "Enter Confirm Password",
                          prefixIcon: const Icon(Icons.key, color: Colors.black),
                          border:
                              OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                          enabledBorder:
                              OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                          disabledBorder:
                              OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                          focusedBorder:
                              OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                          errorBorder:
                              OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                          focusedErrorBorder:
                              OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                          prefixIconConstraints:
                              const BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                          // errorText: Validator.validateMobile(edtMobile.text, context),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        readOnly: true,
                        onTap: () {
                          bottomSheet();
                        },
                        controller: favcolorController,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(242, 242, 242, 1),
                          counterText: "",
                          hintText: "Select fav Color",
                          prefixIcon: Icon(Icons.arrow_drop_down, color: Colors.black),

                          prefixIconConstraints:
                              BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                          // errorText: Validator.validateMobile(edtMobile.text, context),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BlocListener<SelectFavBloc, SelectFavState>(
          listener: (context, state) {
            log("state=>>>$state");
            if (state is SelectFavInitialState) {
              const Center(child: const CircularProgressIndicator());
            }
            if (state is GetSelectFavFailureState) {
              Container(
                  height: MediaQuery.of(context).size.height * 0.70,
                  child: Center(child: Image.asset("assets/images/no_data.gif")));
            }
            if (state is GetSelectFavState) {
              Navigator.pushAndRemoveUntil(
                  context, MaterialPageRoute(builder: (context) => const LoginScreen()), (route) => true);
            }
          },
          child: BlocBuilder<SelectFavBloc, SelectFavState>(
              bloc: selectFavBloc,
              builder: (context, state) {
                return MaterialButton(
                  minWidth: deviceWidth,
                  height: 50,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: Colors.orange,
                  //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  onPressed: () {
                    log("forgetpassword");
                    forgetpassword();
                  },
                  child: const Text(
                    "Done",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600, decoration: TextDecoration.none),
                  ),
                );
              }),
        ),
      ),
    );
  }

  forgetpassword() async {
    log("forgetpassword=>${emailController.text}");
    log("forgetpassword=>${passwordNewController.text}");
    log("forgetpassword=>${confirmPasswordController.text}");
    log("forgetpassword=>${favcolorController.text}");
    if (emailController.text.isEmpty) {
      Utility.showToast(msg: "Please Enter userName");
    } else if (passwordNewController.text.isEmpty) {
      Utility.showToast(msg: "Please Enter Password");
    } else if (confirmPasswordController.text.isEmpty) {
      Utility.showToast(msg: "Please Enter Confirm Password");
    }
    // else if (confirmPasswordController.text == passwordNewController.text) {
    //   Utility.showToast(msg: "Please Enter Same password");
    // }
    else if (favcolorController.text.isEmpty) {
      Utility.showToast(msg: "Please Select Color");
    } else {
      Map<String, dynamic> loginInput = Map<String, dynamic>();
      loginInput["email"] = emailController.text;
      loginInput["securityQuestion"] = "select fav Color";
      loginInput["securityQuestionAnswer"] = favcolorController.text;
      loginInput["NewPassword"] = confirmPasswordController.text;
      selectFavBloc.add(GetSelectFavEvent(input: loginInput));
    }
  }

  void bottomSheet() {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        builder: (context) {
          return Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: new Icon(Icons.photo),
                  title: new Text('Orange'),
                  onTap: () {
                    favcolorController.text = "Photo";
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: new Icon(Icons.music_note),
                  title: new Text('White'),
                  onTap: () {
                    favcolorController.text = "White";
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: new Icon(Icons.videocam),
                  title: new Text('Black'),
                  onTap: () {
                    favcolorController.text = "Black";
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: new Icon(Icons.share),
                  title: new Text('Red'),
                  onTap: () {
                    favcolorController.text = "Red";
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          );
        });
  }
}
