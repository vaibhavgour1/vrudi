import 'dart:developer';

import 'package:flutter/material.dart';

import '../utility/colors.dart';

class LeaveCreation extends StatefulWidget {
  const LeaveCreation({Key? key}) : super(key: key);

  @override
  State<LeaveCreation> createState() => _LeaveCreationState();
}

class _LeaveCreationState extends State<LeaveCreation> {
  final elevation = 3.0;
  bool isTrue = false;

  int _typeofdeduction = -1;
  int _cap = -1;
  int _deductiontype = -1;
  @override
  Widget build(BuildContext context) {
    double appWidth = MediaQuery.of(context).size.width;
    double appHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Create Leave",
          style: TextStyle(
              fontSize: 22,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          width: appWidth,
          height: appHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(
                height: appHeight * 0.02,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: const EdgeInsets.only(left:20,right:20),
                 child: TextFormField(
                    decoration:  InputDecoration(
                      counterText: "",
                      contentPadding: EdgeInsets.only(left: 5),
                      hintText: " Leave Name",
                      hintStyle: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),borderSide: const BorderSide(color: Colors.red,width: 2,style: BorderStyle.solid)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),borderSide:  const BorderSide(color: Colors.red,width: 2,style: BorderStyle.solid)),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10), borderSide:const BorderSide(color: Colors.black,width: 2,style: BorderStyle.solid)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10), borderSide:const BorderSide(color: Colors.red,width: 2,style: BorderStyle.solid)),
                    ),
                  ),),
                  SizedBox(
                    height: appHeight * 0.03,
                  ),
                  const Text(
                    "Deduction Type",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: appHeight * 0.002,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Radio<int>(
                            activeColor: Colors.red,
                            value: 1,
                            groupValue: _deductiontype,
                            onChanged: (value) {
                              log("===>$_deductiontype");
                              setState(() {
                                _deductiontype = value!;
                              });
                            },
                          ),
                          const Text(
                            "Deductible",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio<int>(
                            activeColor: Colors.red,
                            value: 0,
                            groupValue: _deductiontype,
                            onChanged: (value) {
                              log("===>$_deductiontype");
                              setState(() {
                                _deductiontype = value!;
                              });
                            },
                          ),
                          const Text(
                            "Non - Deductible",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: appHeight * 0.005,
                  ),
                  const Text(
                    "Type Of Deduction",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: appHeight * 0.001,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Radio<int>(
                            activeColor: ColorPrimary,
                            value: 1,
                            groupValue: _typeofdeduction,
                            onChanged: (value) {
                              log("===>$_typeofdeduction");
                              setState(() {
                                _typeofdeduction = value!;
                              });
                            },
                          ),
                          const Text(
                            "Flat Amount",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),

                        ],
                      ),
                      Container(
                        width: appWidth*0.35,
                        child: TextFormField(
                          decoration:  InputDecoration(
                            counterText: "",
                            contentPadding: EdgeInsets.only(left: 5),
                            hintText: " Leave Name",
                            hintStyle: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),borderSide: const BorderSide(color: Colors.red,width: 2,style: BorderStyle.solid)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),borderSide:  const BorderSide(color: Colors.red,width: 2,style: BorderStyle.solid)),
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10), borderSide:const BorderSide(color: Colors.black,width: 2,style: BorderStyle.solid)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10), borderSide:const BorderSide(color: Colors.red,width: 2,style: BorderStyle.solid)),
                          ),
                        ),
                      )

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Radio<int>(
                            activeColor: ColorPrimary,
                            value: 0,
                            groupValue: _typeofdeduction,
                            onChanged: (value) {
                              log("===>$_typeofdeduction");
                              setState(() {
                                _typeofdeduction = value!;
                              });
                            },
                          ),
                          const Text(
                            "Percentage",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      Container(
                        width: appWidth*0.35,
                        child: TextFormField(
                          decoration:  InputDecoration(
                            counterText: "",
                            contentPadding: EdgeInsets.only(left: 5),
                            hintText: " Leave Name",
                            hintStyle: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),borderSide: const BorderSide(color: Colors.red,width: 2,style: BorderStyle.solid)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),borderSide:  const BorderSide(color: Colors.red,width: 2,style: BorderStyle.solid)),
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10), borderSide:const BorderSide(color: Colors.black,width: 2,style: BorderStyle.solid)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10), borderSide:const BorderSide(color: Colors.red,width: 2,style: BorderStyle.solid)),
                          ),
                        ),
                      )

                    ],
                  ),
                  const Text(
                    "Cap",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Radio<int>(
                            activeColor: ColorPrimary,
                            value: 1,
                            groupValue: _cap,
                            onChanged: (value) {
                              log("===>$_cap");
                              setState(() {
                                _cap = value!;
                              });
                            },
                          ),
                          const Text(
                            "Yearly",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      Container(
                        width: appWidth*0.35,
                        child: TextFormField(
                          decoration:  InputDecoration(
                            counterText: "",
                            contentPadding: EdgeInsets.only(left: 5),
                            hintText: " Leave Name",
                            hintStyle: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),borderSide: const BorderSide(color: Colors.red,width: 2,style: BorderStyle.solid)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),borderSide:  const BorderSide(color: Colors.red,width: 2,style: BorderStyle.solid)),
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10), borderSide:const BorderSide(color: Colors.black,width: 2,style: BorderStyle.solid)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10), borderSide:const BorderSide(color: Colors.red,width: 2,style: BorderStyle.solid)),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Radio<int>(
                            activeColor: ColorPrimary,
                            value: 0,
                            groupValue: _cap,
                            onChanged: (value) {
                              log("===>$_cap");
                              setState(() {
                                _cap = value!;
                              });
                            },
                          ),
                          const Text(
                            "Monthly",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      Container(
                        width: appWidth*0.35,
                        child: TextFormField(
                          decoration:  InputDecoration(
                            counterText: "",
                            contentPadding: EdgeInsets.only(left: 5),
                            hintText: " Leave Name",
                            hintStyle: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),borderSide: const BorderSide(color: Colors.red,width: 2,style: BorderStyle.solid)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),borderSide:  const BorderSide(color: Colors.red,width: 2,style: BorderStyle.solid)),
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10), borderSide:const BorderSide(color: Colors.black,width: 2,style: BorderStyle.solid)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10), borderSide:const BorderSide(color: Colors.red,width: 2,style: BorderStyle.solid)),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: appHeight * .05,
              ),
              MaterialButton(
                padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Colors.deepOrangeAccent,
                child: const Text('Create Leave',
                    style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w600)),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
