import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vrudi/ui/login/login_scren.dart';
import 'package:vrudi/ui/usertype/user_type.dart';
import 'package:vrudi/utility/validator.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  TextEditingController selectSecurityController = TextEditingController();
  TextEditingController securityController = TextEditingController();
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
            Column(
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/trans_logo.png",
                    height: deviceHeight * 0.20,
                  ),
                ),
                SizedBox(
                  height: deviceHeight * 0.05,
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    validator: (numb) => Validator.emailValidator(numb!),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: emailController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(242, 242, 242, 1),
                      counterText: "",
                      hintText: "Please Enter Email Id",
                      prefixIcon: const Icon(Icons.email, color: Colors.black),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
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
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: nameController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(242, 242, 242, 1),
                      counterText: "",
                      hintText: "Please Enter Full name",
                      prefixIcon: const Icon(Icons.person, color: Colors.black),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
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
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: usernameController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(242, 242, 242, 1),
                      counterText: "",
                      hintText: "Please Enter User Name",
                      prefixIcon: const Icon(Icons.supervised_user_circle, color: Colors.black),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
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
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
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
                      hintText: "Please Enter Password",
                      prefixIcon: const Icon(Icons.key, color: Colors.black),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
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
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    validator: (numb) => Validator.passwordValidator(numb!),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                    controller: confirmController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(242, 242, 242, 1),
                      counterText: "",
                      hintText: "Please Enter Password Again",
                      prefixIcon: const Icon(Icons.key, color: Colors.black),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
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
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: securityController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(242, 242, 242, 1),
                      counterText: "",
                      hintText: "Please Select Security question",
                      prefixIcon: const Icon(Icons.question_answer, color: Colors.black),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
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
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: selectSecurityController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(242, 242, 242, 1),
                      counterText: "",
                      hintText: "Please Enter Security Answer",
                      prefixIcon: const Icon(Icons.security, color: Colors.black),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
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
                ),
                const SizedBox(
                  height: 40,
                ),
                MaterialButton(
                  minWidth: deviceWidth * 0.84,
                  height: 50,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: Colors.orange,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context, MaterialPageRoute(builder: (context) => const UserType()), (route) => false);
                  },
                  child: const Text(
                    "Next",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600, decoration: TextDecoration.none),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context, MaterialPageRoute(builder: (context) => const LoginScreen()), (route) => false);
                  },
                  child: const Text(
                    "Log In",
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
  }

  void bottomSheet() {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        builder: (context) {
          return Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: new Icon(Icons.photo),
                  title: new Text('Photo'),
                  onTap: () {
                    securityController.text = "Photo";
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
