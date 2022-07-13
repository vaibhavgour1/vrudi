import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vrudi/ui/forgetpassword/forget_password_bloc.dart';
import 'package:vrudi/ui/forgetpassword/forget_password_state.dart';
import 'package:vrudi/ui/login/login_scren.dart';
import 'package:vrudi/utility/utilty.dart';
import 'package:vrudi/utility/validator.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({Key? key}) : super(key: key);

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  ForgetPasswordBloc forgetPasswordBloc = ForgetPasswordBloc();

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return BlocProvider<ForgetPasswordBloc>(
      create: (contex) => forgetPasswordBloc,
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
                      Container(
                        height: 50,
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          validator: (numb) => Validator.passwordValidator(numb!),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                          controller: passwordController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromRGBO(242, 242, 242, 1),
                            counterText: "",
                            hintText: "Enter Password",
                            prefixIcon: const Icon(Icons.key, color: Colors.black),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                            prefixIconConstraints:
                                const BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
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
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                            prefixIconConstraints:
                                const BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
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
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BlocConsumer<ForgetPasswordBloc, ForgetPasswordState>(
            bloc: forgetPasswordBloc,
            listener: (context, state) {},
            builder: (context, state) {
              return MaterialButton(
                minWidth: deviceWidth,
                height: 50,
                padding: const EdgeInsets.all(8.0),
                textColor: Colors.white,
                color: Colors.orange,
                //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context, MaterialPageRoute(builder: (context) => const LoginScreen()), (route) => false);
                },
                child: const Text(
                  "Done",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600, decoration: TextDecoration.none),
                ),
              );
            }),
      ),
    );
  }

  void forgetPassword({required String email, required String password, required String securityAnswer}) {
    if (email.isEmpty) {
      Utility.showToast(msg: "Please Enter Email");
    } else if (password.isEmpty) {
      Utility.showToast(msg: "Please Enter Password");
    } else if (securityAnswer.isEmpty) {
      Utility.showToast(msg: "Please Select securityAnswer");
    } else {
      Map<String, dynamic> signUpInput = <String, dynamic>{};
      signUpInput['email'] = email;
      signUpInput['password'] = password;

      signUpInput['securityQuestion'] = 'Select your Fav Color';
      signUpInput['securityAnswer'] = securityAnswer;
      print("input-->$signUpInput");
    }
  }
}
