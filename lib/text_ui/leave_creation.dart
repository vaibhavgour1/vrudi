import 'package:flutter/material.dart';

class LeaveCreation extends StatefulWidget {
  const LeaveCreation({Key? key}) : super(key: key);

  @override
  State<LeaveCreation> createState() => _LeaveCreationState();
}

class _LeaveCreationState extends State<LeaveCreation> {
  final elevation = 3.0;
  bool isTrue = false;
  @override
  Widget build(BuildContext context) {
    double appWidth = MediaQuery.of(context).size.width;
    double appHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          width: appWidth,
          height: appHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Create Leave",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: appHeight * 0.02,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    width: appWidth * 0.75,
                    height: appHeight * 0.040,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      color: Colors.white70,
                      shape: BoxShape.rectangle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade300,
                            spreadRadius: 0.0,
                            blurRadius: elevation,
                            offset: const Offset(2.0, 2.0)),
                        BoxShadow(
                            color: Colors.grey.shade400,
                            spreadRadius: 0.0,
                            blurRadius: elevation / 2.0,
                            offset: const Offset(2.0, 2.0)),
                        BoxShadow(
                            color: Colors.white,
                            spreadRadius: 2.0,
                            blurRadius: elevation,
                            offset: const Offset(-3.0, -3.0)),
                        BoxShadow(
                            color: Colors.white,
                            spreadRadius: 2.0,
                            blurRadius: elevation / 2,
                            offset: const Offset(-3.0, -3.0)),
                      ],
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        counterText: "",
                        hintText: "Leave Name",
                        hintStyle: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: appHeight * 0.03,
                  ),
                  Container(
                    width: appWidth * 0.75,
                    child: const Text(
                      "Deduction Type",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: appHeight * 0.002,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: isTrue,
                            groupValue: isTrue,
                            onChanged: (value) {
                              setState(() {
                                isTrue = value as bool;
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
                          Radio(
                            value: isTrue,
                            groupValue: isTrue,
                            onChanged: (value) {
                              setState(() {
                                isTrue = value as bool;
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
                  Container(
                    width: appWidth * 0.75,
                    child: const Text(
                      "Type Of Deduction",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: appHeight * 0.001,
                  ),
                  Container(
                    width: appWidth * 0.80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: isTrue,
                              groupValue: isTrue,
                              onChanged: (value) {
                                setState(() {
                                  isTrue = value as bool;
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
                        SizedBox(
                          width: appWidth * 0.05,
                        ),
                        Container(
                          height: appHeight * 0.030,
                          padding: const EdgeInsets.fromLTRB(10, 3, 10, 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade300,
                                  spreadRadius: 0.0,
                                  blurRadius: elevation,
                                  offset: const Offset(3.0, 3.0)),
                              BoxShadow(
                                  color: Colors.grey.shade400,
                                  spreadRadius: 0.0,
                                  blurRadius: elevation / 2.0,
                                  offset: const Offset(3.0, 3.0)),
                              BoxShadow(
                                  color: Colors.white,
                                  spreadRadius: 2.0,
                                  blurRadius: elevation,
                                  offset: const Offset(-3.0, -3.0)),
                              BoxShadow(
                                  color: Colors.white,
                                  spreadRadius: 2.0,
                                  blurRadius: elevation / 2,
                                  offset: const Offset(-3.0, -3.0)),
                            ],
                          ),
                          child: const Text(
                            "200",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: appWidth * 0.80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: isTrue,
                              groupValue: isTrue,
                              onChanged: (value) {
                                setState(() {
                                  isTrue = value as bool;
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
                        SizedBox(
                          width: appWidth * 0.05,
                        ),
                        Container(
                          height: appHeight * 0.030,
                          padding: const EdgeInsets.fromLTRB(10, 3, 10, 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade300,
                                  spreadRadius: 0.0,
                                  blurRadius: elevation,
                                  offset: const Offset(3.0, 3.0)),
                              BoxShadow(
                                  color: Colors.grey.shade400,
                                  spreadRadius: 0.0,
                                  blurRadius: elevation / 2.0,
                                  offset: const Offset(3.0, 3.0)),
                              BoxShadow(
                                  color: Colors.white,
                                  spreadRadius: 2.0,
                                  blurRadius: elevation,
                                  offset: const Offset(-3.0, -3.0)),
                              BoxShadow(
                                  color: Colors.white,
                                  spreadRadius: 2.0,
                                  blurRadius: elevation / 2,
                                  offset: const Offset(-3.0, -3.0)),
                            ],
                          ),
                          child: const Text(
                            "100",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: appWidth * 0.75,
                    child: const Text(
                      "Cap",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: appWidth * 0.80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: isTrue,
                              groupValue: isTrue,
                              onChanged: (value) {
                                setState(() {
                                  isTrue = value as bool;
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
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: appHeight * 0.030,
                          padding: const EdgeInsets.fromLTRB(10, 3, 10, 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade300,
                                  spreadRadius: 0.0,
                                  blurRadius: elevation,
                                  offset: const Offset(3.0, 3.0)),
                              BoxShadow(
                                  color: Colors.grey.shade400,
                                  spreadRadius: 0.0,
                                  blurRadius: elevation / 2.0,
                                  offset: const Offset(3.0, 3.0)),
                              BoxShadow(
                                  color: Colors.white,
                                  spreadRadius: 2.0,
                                  blurRadius: elevation,
                                  offset: const Offset(-3.0, -3.0)),
                              BoxShadow(
                                  color: Colors.white,
                                  spreadRadius: 2.0,
                                  blurRadius: elevation / 2,
                                  offset: const Offset(-3.0, -3.0)),
                            ],
                          ),
                          child: const Text(
                            "200",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: appWidth * 0.80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: isTrue,
                              groupValue: isTrue,
                              onChanged: (value) {
                                setState(() {
                                  isTrue = value as bool;
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
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: appHeight * 0.030,
                          padding: const EdgeInsets.fromLTRB(10, 3, 10, 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade300,
                                  spreadRadius: 0.0,
                                  blurRadius: elevation,
                                  offset: const Offset(3.0, 3.0)),
                              BoxShadow(
                                  color: Colors.grey.shade400,
                                  spreadRadius: 0.0,
                                  blurRadius: elevation / 2.0,
                                  offset: const Offset(3.0, 3.0)),
                              BoxShadow(
                                  color: Colors.white,
                                  spreadRadius: 2.0,
                                  blurRadius: elevation,
                                  offset: const Offset(-3.0, -3.0)),
                              BoxShadow(
                                  color: Colors.white,
                                  spreadRadius: 2.0,
                                  blurRadius: elevation / 2,
                                  offset: const Offset(-3.0, -3.0)),
                            ],
                          ),
                          child: const Text(
                            "200",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
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
