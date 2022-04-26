import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'dart:async';

import 'package:vrudi/ui/login/login_scren.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  // refresh() {
  //   log("refresh hua");

  //   _refreshController.refreshCompleted();

  //   //setState(() {});
  // }
  getLogin() {
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen())));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLogin();
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return SmartRefresher(
        controller: _refreshController,
        enablePullDown: true,
        enablePullUp: false,
        onRefresh: () {
          // refresh();
        },
        child: Scaffold(
          body: SafeArea(
            child: Stack(children: [
              Image.asset(
                "assets/images/bg.jpg",
                fit: BoxFit.fill,
                width: deviceWidth,
              ),
              Positioned(
                  child: Center(
                child: Image.asset(
                  'assets/images/trans_logo.png',
                  height: deviceHeight * 0.40,
                ),
              )),
            ]),
          ),
        ));
  }
}
