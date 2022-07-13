import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:vrudi/ui/chat/chat_screen.dart';
import 'package:vrudi/ui/drawer/drawer.dart';
import 'package:vrudi/ui/hrmsDetail/hrmshome.dart';
import 'package:vrudi/ui/newanduseproject/new_project_template.dart';
import 'package:vrudi/ui/professionalprofile/professional_client.dart';
import 'package:vrudi/ui/tasklist/task_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final globalKey = GlobalKey<ScaffoldState>();
  List name = ["Task", "Vault", "Projects", "Products", "HRMS", "Revenues"];
  List<GDPData> _chartData = [];
  TooltipBehavior? _tooltipBehavior;

  @override
  void initState() {
    // TODO: implement initState
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  List<GDPData> getChartData() {
    final List<GDPData> chartData = [
      GDPData('Prospective', 1600),
      GDPData('Accrued', 2490),
      GDPData('Received', 2900),
    ];
    return chartData;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      key: globalKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            globalKey.currentState!.openDrawer();
            // Scaffold.of(context).openDrawer();
          },
          icon: const Icon(
            Icons.menu,
            color: Colors.blue,
          ),
        ),
        elevation: 10,
        title: const Text(
          "Home",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.blue,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (cpntext)=>ProfesionalForm()));
              },
              icon: const Icon(
                Icons.person,
                color: Colors.blue,
              )),
        ],
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(15),
            child: Column(children: [
              GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 150, childAspectRatio: 3 / 1.2, crossAxisSpacing: 15, mainAxisSpacing: 15),
                  itemCount: name.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return InkWell(
                      onTap: () {
                        log("$index");
                        index == 0
                            ? Navigator.pushAndRemoveUntil(
                                context, MaterialPageRoute(builder: (context) => const TaskList()), (route) => true)
                            : index == 2
                                ? Navigator.pushAndRemoveUntil(context,
                                    MaterialPageRoute(builder: (context) => const NewProject()), (route) => true)
                                : index == 4
                                    ? Navigator.pushAndRemoveUntil(
                                        context, MaterialPageRoute(builder: (context) => HrmsHome()), (route) => true)
                                    : index == 5
                                        ? Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(builder: (context) => const ChatScreen()),
                                            (route) => true)
                                        : Navigator.pushAndRemoveUntil(context,
                                            MaterialPageRoute(builder: (context) => const TaskList()), (route) => true);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          name[index],
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              offset: const Offset(0.0, 0.0), //(x,y)
                              blurRadius: 2.0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    );
                  }),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(color: Colors.grey, offset: Offset(0.0, 0.0), blurRadius: 5 //(x,y)
                        ),
                  ],
                ),
                child: Row(children: [
                  Container(
                    width: 200,
                    child: SfCircularChart(
                      // title: ChartTitle(text: 'Continent wise GDP - 2021 \n (in billions of USD)'),
                      // legend: Legend(
                      //   isVisible: true,
                      //   // alignment: ChartAlignment.center,
                      //   orientation: LegendItemOrientation.vertical,
                      //   position: LegendPosition.right,
                      //   // legendItemBuilder: (String name, dynamic series, dynamic point, int index) {
                      //   //   return Container(
                      //   //     height: 200,
                      //   //     width: 40,
                      //   //     child: Column(
                      //   //       children: [
                      //   //         Row(
                      //   //           children: [
                      //   //             Container(
                      //   //               height: 30,
                      //   //               width: 10,
                      //   //               decoration: BoxDecoration(
                      //   //                 color: Colors.yellow,
                      //   //               ),
                      //   //             ),
                      //   //             Column(
                      //   //               children: [Text("data"), Text("data")],
                      //   //             ),
                      //   //           ],
                      //   //         ),
                      //   //         Row(
                      //   //           children: [
                      //   //             Container(
                      //   //               height: 30,
                      //   //               width: 10,
                      //   //               decoration: BoxDecoration(
                      //   //                 color: Colors.yellow,
                      //   //               ),
                      //   //             ),
                      //   //             Column(
                      //   //               children: [Text("data"), Text("data")],
                      //   //             ),
                      //   //           ],
                      //   //         ),
                      //   //         Row(
                      //   //           children: [
                      //   //             Container(
                      //   //               height: 30,
                      //   //               width: 10,
                      //   //               decoration: BoxDecoration(
                      //   //                 color: Colors.yellow,
                      //   //               ),
                      //   //             ),
                      //   //             Column(
                      //   //               children: [Text("data"), Text("data")],
                      //   //             ),
                      //   //           ],
                      //   //         ),
                      //   //       ],
                      //   //     ),
                      //   //   );
                      //   // },
                      //   // legendItemBuilder: (String name, dynamic series, dynamic point, int index) {
                      //   //   return Container(
                      //   //       margin: EdgeInsets.only(top: 20),
                      //   //       decoration: const BoxDecoration(color: Colors.red),
                      //   //       width: 100,
                      //   //       height: 10,
                      //   //       child: Row(children: [
                      //   //         Container(
                      //   //           decoration: BoxDecoration(
                      //   //               color: index == 0
                      //   //                   ? Colors.yellow
                      //   //                   : index == 1
                      //   //                       ? Colors.pink.shade300
                      //   //                       : index == 2
                      //   //                           ? Colors.blue
                      //   //                           : Colors.blue),
                      //   //           width: 10,
                      //   //           height: 30,
                      //   //         ),
                      //   //         Container(child: Text(index.toString())),
                      //   //       ]));
                      //   // },
                      //   overflowMode: LegendItemOverflowMode.wrap,
                      //   iconHeight: 25,
                      // ),
                      // tooltipBehavior: _tooltipBehavior,
                      palette: [Colors.pink.shade300, Colors.yellow, Colors.blue],
                      margin: const EdgeInsets.all(0),

                      series: <CircularSeries>[
                        DoughnutSeries<GDPData, String>(
                          dataSource: _chartData,
                          xValueMapper: (GDPData data, _) => data.continent,
                          yValueMapper: (GDPData data, _) => data.gdp,
                          //  dataLabelSettings: DataLabelSettings(isVisible: true),
                          enableTooltip: true,
                        )
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                " Prospective",
                                style: const TextStyle(fontWeight: FontWeight.w700),
                              ),
                              const Text(
                                " \u20B9 5,00,000.00",
                                style: const TextStyle(fontWeight: FontWeight.w700),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.pink.shade300,
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                " Acccrued",
                                style: const TextStyle(fontWeight: FontWeight.w700),
                              ),
                              const Text(
                                " \u20B9 1,20,000.00",
                                style: const TextStyle(fontWeight: FontWeight.w700),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                " Received",
                                style: const TextStyle(fontWeight: FontWeight.w700),
                              ),
                              Text(
                                " \u20B9 2,15,000.00",
                                style: const TextStyle(fontWeight: FontWeight.w700),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  )
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(color: Colors.grey, offset: Offset(0.0, 0.0), blurRadius: 5 //(x,y)
                        ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "To Do",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        MaterialButton(
                          color: Colors.yellow,
                          child: Text(
                            "25",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          onPressed: () {},
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "In Progress",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        MaterialButton(
                          color: Colors.pink.shade300,
                          child: Text(
                            "15",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          onPressed: () {},
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Completed",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        MaterialButton(
                          color: Colors.blue,
                          child: Text(
                            "58",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          onPressed: () {},
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(color: Colors.grey, offset: Offset(0.0, 0.0), blurRadius: 5 //(x,y)
                        ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Absent",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          "4",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "present",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          "6",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Half day",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          "2",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ])),
      ),
    );
  }
}

class GDPData {
  GDPData(this.continent, this.gdp);
  final String continent;
  final int gdp;
}
