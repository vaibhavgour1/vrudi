import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:vrudi/ui/clientinputform/client_form.dart';
import 'package:vrudi/ui/clientlist/client_list.dart';
import 'package:vrudi/ui/employeList/employee_list.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  //logout-dialog
  // logoutDialog() {
  //   return showDialog(
  //       context: context,
  //       barrierDismissible: false,
  //       builder: (context) {
  //         return AlertDialog(
  //           contentPadding: EdgeInsets.fromLTRB(25, 10, 0, 0),
  //           title: Text("Logout", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600)),
  //           content: Text("Are you sure you want to logout?",
  //               style: TextStyle(color: Color.fromRGBO(85, 85, 85, 1), fontSize: 15, fontWeight: FontWeight.w500)),
  //           actions: [
  //             MaterialButton(
  //               child: Text("Cancel", style: TextStyle(color: ColorTextPrimary, fontWeight: FontWeight.w600)),
  //               onPressed: () {
  //                 Navigator.pop(context);
  //               },
  //             ),
  //             MaterialButton(
  //               child: Text("Logout", style: TextStyle(color: Color(0xfff4511e), fontWeight: FontWeight.w600)),
  //               onPressed: () async {
  //                 log("ndndnd");
  //                 LogOutResponse logoutData = await ApiProvider().logout();
  //                 print("kai kroge +${logoutData.success}");
  //                 await SharedPref.setBooleanPreference(SharedPref.LOGIN, false);
  //                 print("kai kroge +${logoutData.success}");
  //                 if (await Network.isConnected()) {
  //                   SystemChannels.textInput.invokeMethod("TextInput.hide");
  //                   print("kai kroge +");
  //                   Navigator.pushAndRemoveUntil(
  //                       context, MaterialPageRoute(builder: (context) => Login()), ModalRoute.withName("/"));
  //
  //                   Fluttertoast.showToast(
  //                       backgroundColor: ColorPrimary, textColor: Colors.white, msg: "Logout Successfully"
  //                     // timeInSecForIos: 3
  //                   );
  //                 } else {
  //                   Fluttertoast.showToast(
  //                       backgroundColor: ColorPrimary, textColor: Colors.white, msg: "Please turn on  internet");
  //                 }
  //                 // LogOut();
  //                 // Navigator.push(
  //                 //   context,
  //                 //   MaterialPageRoute(builder: (context) => Login()),
  //                 // );
  //               },
  //             ),
  //           ],
  //         );
  //       });
  // }

  //logout-dialog
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // getdata();
  }

  String name = "", mobile = "";
  void getdata() async {
    // name = await SharedPref.getStringPreference(SharedPref.NAME);
    // mobile = await SharedPref.getStringPreference(SharedPref.MOBILE);
    log("==>$name");
    log("==>$mobile");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 270,
      child: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                child: Column(children: [
                  Image.asset("assets/images/bg.jpg", width: 170, height: 170),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "$name",
                    style: const TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text("+91 $mobile",
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                      ))
                ]),
              ),

              Container(
                decoration: const BoxDecoration(
                  border: const Border(bottom: const BorderSide(width: 0.7, color: Color(0xffcdcdcd))),
                ),
                child: ListTile(
                  leading: Container(width: 20, child: Image.asset('assets/images/bg.jpg')),
                  title: const Text("My Profile",
                      style: const TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600)),
                  onTap: () {
                    Navigator.pop(context);
                    //   Navigator.pushAndRemoveUntil(
                    //       context, MaterialPageRoute(builder: (context) => BottomNavigation()), ModalRoute.withName("/"));
                  },
                ),
              ),

              Container(
                decoration: const BoxDecoration(
                  border: Border(bottom: const BorderSide(width: 0.7, color: Color(0xffcdcdcd))),
                ),
                child: ListTile(
                  leading: Container(width: 20, child: Image.asset('assets/images/bg.jpg', width: 20)),
                  title: const Text("Client",
                      style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600)),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  ClientList()),
                    );
                  },
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(bottom: const BorderSide(width: 0.7, color: Color(0xffcdcdcd))),
                ),
                child: ListTile(
                  leading: Container(width: 20, child: Image.asset('assets/images/bg.jpg', width: 20)),
                  title: const Text("Employee",
                      style: const TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600)),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EmployeList()),
                    );
                  },
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(width: 0.7, color: Color(0xffcdcdcd))),
                ),
                child: ListTile(
                  leading: Container(width: 20, child: Image.asset('assets/images/bg.jpg', width: 20)),
                  title: const Text("Setting",
                      style: const TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600)),
                  onTap: () {
                    Navigator.pop(context);
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => WebViewScreen(
                    //         title: "Privacy Policy",
                    //         url: "http://employee.myprofitinc.com/aboutus",
                    //       )),
                    // );
                  },
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  border: const Border(bottom: const BorderSide(width: 0.7, color: Color(0xffcdcdcd))),
                ),
                child: ListTile(
                  leading: Container(width: 20, child: Image.asset('assets/images/bg.jpg', width: 20)),
                  title: const Text("Support",
                      style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600)),
                  onTap: () {
                    Navigator.pop(context);
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => WebViewScreen(
                    //         title: "Privacy Policy",
                    //         url: "http://employee.myprofitinc.com/aboutus",
                    //       )),
                    // );
                  },
                ),
              ),
              // Container(
              //   decoration: BoxDecoration(
              //     border: Border(bottom: BorderSide(width: 0.7, color: Color(0xffcdcdcd))),
              //   ),
              //   child: ListTile(
              //     leading: Container(width: 20, child: Image.asset('images/s4.png', width: 20)),
              //     title:
              //         Text("Rate Us", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600)),
              //   ),
              // ),
              // Container(
              //   decoration: BoxDecoration(
              //     border: Border(
              //         bottom: BorderSide(width: 0.7, color: Color(0xffcdcdcd))),
              //   ),
              //   child: ListTile(
              //     leading: Image.asset('images/s5.png', width: 20),
              //     title: Text("Change Language",
              //         style: TextStyle(
              //             color: Colors.black,
              //             fontSize: 15,
              //             fontWeight: FontWeight.w600)),
              //     onTap: () {
              //       Navigator.pop(context);
              //
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(builder: (context) => ChangeLanGuage()),
              //       );
              //       // logoutDialog();
              //     },
              //   ),
              // ),
              Container(
                decoration: const BoxDecoration(
                  border: const Border(bottom: BorderSide(width: 0.7, color: Color(0xffcdcdcd))),
                ),
                child: ListTile(
                  leading: Container(width: 20, child: Image.asset('assets/images/bg.jpg', width: 20)),
                  title: const Text("Logout",
                      style:
                          TextStyle(color: Color.fromRGBO(249, 45, 40, 1), fontSize: 15, fontWeight: FontWeight.w600)),
                  onTap: () {
                    Navigator.pop(context);
                    // logoutDialog();
                    // logoutDialog();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
