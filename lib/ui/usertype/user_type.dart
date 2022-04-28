import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vrudi/ui/login/login_scren.dart';
import 'package:vrudi/utility/validator.dart';

class UserType extends StatefulWidget {
  const UserType({Key? key}) : super(key: key);

  @override
  State<UserType> createState() => _UserTypeState();
}

class _UserTypeState extends State<UserType> {
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
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    readOnly: true,
                    onTap: () {
                      bottomSheet();
                    },
                    keyboardType: TextInputType.visiblePassword,
                    validator: (numb) => Validator.passwordValidator(numb!),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
                    controller: passwordController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(242, 242, 242, 1),
                      counterText: "",
                      hintText: "Please Select User Type",
                      suffixIcon: const Icon(Icons.arrow_drop_down, color: Colors.black),
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
                  height: deviceHeight * 0.20,
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
                        context, MaterialPageRoute(builder: (context) => const LoginScreen()), (route) => false);
                  },
                  child: const Text(
                    "Sign Up",
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
                    passwordController.text = "Photo";
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
