import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vrudi/ui/forgetpassword/forgetpassword.dart';
import 'package:vrudi/ui/selectfavColor/select_fav.dart';
import 'package:vrudi/utility/colors.dart';
import 'package:vrudi/utility/validator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController passwordController = TextEditingController();
  // TextEditingController emailController = TextEditingController();
  TextForm textForm = TextForm();
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
                    height: deviceHeight * 0.40,
                  ),
                ),
                SizedBox(
                  height: deviceHeight * 0.05,
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: textForm,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
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
                      hintText: "Please Enter Password",
                      prefixIcon: const Icon(Icons.key, color: Colors.black),
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
                MaterialButton(
                  minWidth: deviceWidth * 0.65,
                  height: 50,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: Colors.orange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {},
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.none),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SelectFavScreen()),
                        (route) => false);
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
                const Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline),
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
}

class TextForm extends StatefulWidget {
  const TextForm({Key? key}) : super(key: key);

  @override
  State<TextForm> createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: (numb) => Validator.emailValidator(numb!),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
      controller: passwordController,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromRGBO(242, 242, 242, 1),
        counterText: "",
        hintText: "Please Enter Email",
        prefixIcon: const Icon(Icons.email, color: Colors.black),
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
            minWidth: 50, minHeight: 25, maxWidth: 51, maxHeight: 25),
        // errorText: Validator.validateMobile(edtMobile.text, context),
      ),
    );

    return email;
  }
}
