

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:vrudi/ui/home/home.dart';
import 'package:vrudi/ui/login/login_bloc.dart';
import 'package:vrudi/ui/login/login_event.dart';
import 'package:vrudi/ui/login/login_state.dart';
import 'package:vrudi/ui/selectfavColor/select_fav.dart';
import 'package:vrudi/ui/signup/signup.dart';
import 'package:vrudi/utility/colors.dart';
import 'package:vrudi/utility/sharedpref.dart';
import 'package:vrudi/utility/utilty.dart';
import 'package:vrudi/utility/validator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  LoginBloc loginBloc = LoginBloc();
  // LoginViewModel _loginViewModel = LoginViewModel();
  // TextEditingController emailController = TextEditingController();

  loginApiCall(username, password) async {
    if (username.isEmpty) {

      Utility.showToast(msg: "Please Enter userName");
    } else

      if (password.length <= 2) {
        Utility.showToast(msg: "Please Enter Password");

    } else {
        log("===>$username");
        log("===>$password");
    Map<String, dynamic> loginInput = Map<String, dynamic>();
    loginInput["userId"] = username;
    loginInput["password"] = password;
    log("===>$username");
    log("===>$loginInput");
    loginBloc.add(GetLoginEvent(input: loginInput));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    // final provider = Provider.of<LoginViewModel>(context, listen: false);
    // _loginViewModel = provider;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    //  final provider = Provider.of<LoginViewModel>(context);
    return BlocProvider<LoginBloc>(
      create: (context) => loginBloc,
      child: BlocConsumer<LoginBloc, LoginState>(
        bloc: loginBloc,
        listener: (context, state) async {
log("===>$state");
          if (state is GetLoginState) {
            Navigator.pushAndRemoveUntil(
                context, MaterialPageRoute(builder: (context) => const HomeScreen()), (route) => true);
          }
          if (state is GetLoginFailureState) {
            Fluttertoast.showToast(
              msg: state.message,
              textColor: Colors.white,
              backgroundColor: ColorPrimary,
            );
          }
        },
        builder: (context, state) {
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
                  Column(
                    children: [
                      Center(
                        child: Image.asset(
                          "assets/images/trans_logo.png",
                          height: deviceHeight * 0.40,
                        ),
                      ),
                      SizedBox(
                        height: deviceHeight * 0.03,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          validator: (numb) => Validator.emailValidator(numb!),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                          controller: usernameController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromRGBO(242, 242, 242, 1),
                            counterText: "",
                            hintText: "Please Enter Email",
                            prefixIcon: const Icon(Icons.email, color: Colors.black),
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          validator: (numb) => Validator.passwordValidator(numb!),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                          controller: passwordController,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color.fromRGBO(242, 242, 242, 1),
                            counterText: "",
                            hintText: "Please Enter Password",
                            prefixIcon: Icon(Icons.key, color: Colors.black),

                            prefixIconConstraints:
                                BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
                            // errorText: Validator.validateMobile(edtMobile.text, context),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: deviceHeight * 0.10,
                      ),
                      MaterialButton(
                        minWidth: deviceWidth * 0.84,
                        height: 50,
                        padding: const EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        color: Colors.orange,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        onPressed: () async {
                          log("===>");
                          loginApiCall(usernameController.text, passwordController.text);
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600, decoration: TextDecoration.none),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushAndRemoveUntil(context,
                              MaterialPageRoute(builder: (context) => const SelectFavScreen()), (route) => true);
                        },
                        child: const Text(
                          "Forget PassWord?",
                          style: TextStyle(
                              fontSize: 19,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.none),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                              context, MaterialPageRoute(builder: (context) => const SignUp()), (route) => true);
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ));
        },
      ),
    );
  }
}
//
// class TextForm extends StatefulWidget {
//   const TextForm({Key? key}) : super(key: key);
//
//   @override
//   State<TextForm> createState() => _TextFormState();
// }
//
// class _TextFormState extends State<TextForm> {
//   TextEditingController usernameController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     Widget email = TextFormField(
//       keyboardType: TextInputType.emailAddress,
//       validator: (numb) => Validator.emailValidator(numb!),
//       autovalidateMode: AutovalidateMode.onUserInteraction,
//       inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
//       controller: passwordController,
//       decoration: InputDecoration(
//         filled: true,
//         fillColor: const Color.fromRGBO(242, 242, 242, 1),
//         counterText: "",
//         hintText: "Please Enter Email",
//         prefixIcon: const Icon(Icons.email, color: Colors.black),
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
//         enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
//         disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
//         focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
//         errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
//         focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
//         prefixIconConstraints: const BoxConstraints(minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
//         // errorText: Validator.validateMobile(edtMobile.text, context),
//       ),
//     );
//
//     return email;
//   }
// }
