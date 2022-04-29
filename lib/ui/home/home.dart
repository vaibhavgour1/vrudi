import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:vrudi/ui/drawer/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final globalKey = GlobalKey<ScaffoldState>();
  List name = ["Task", "Vault", "projects", "Products", "HRMS", "Revenues"];
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
              onPressed: () {},
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
                      maxCrossAxisExtent: 150, childAspectRatio: 3 / 1.5, crossAxisSpacing: 15, mainAxisSpacing: 15),
                  itemCount: name.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      alignment: Alignment.center,
                      child: Text(
                        name[index],
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            offset: const Offset(0.0, 0.0), //(x,y)
                            blurRadius: 2.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20),
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
                child: SfCircularChart(
                  // title: ChartTitle(text: 'Continent wise GDP - 2021 \n (in billions of USD)'),
                  legend: Legend(
                    isVisible: true,
                    // alignment: ChartAlignment.center,
                    orientation: LegendItemOrientation.vertical,
                    position: LegendPosition.right,
                    // legendItemBuilder: (String name, dynamic series, dynamic point, int index) {
                    //   return Container(
                    //     height: 200,
                    //     width: 40,
                    //     child: Column(
                    //       children: [
                    //         Row(
                    //           children: [
                    //             Container(
                    //               height: 30,
                    //               width: 10,
                    //               decoration: BoxDecoration(
                    //                 color: Colors.yellow,
                    //               ),
                    //             ),
                    //             Column(
                    //               children: [Text("data"), Text("data")],
                    //             ),
                    //           ],
                    //         ),
                    //         Row(
                    //           children: [
                    //             Container(
                    //               height: 30,
                    //               width: 10,
                    //               decoration: BoxDecoration(
                    //                 color: Colors.yellow,
                    //               ),
                    //             ),
                    //             Column(
                    //               children: [Text("data"), Text("data")],
                    //             ),
                    //           ],
                    //         ),
                    //         Row(
                    //           children: [
                    //             Container(
                    //               height: 30,
                    //               width: 10,
                    //               decoration: BoxDecoration(
                    //                 color: Colors.yellow,
                    //               ),
                    //             ),
                    //             Column(
                    //               children: [Text("data"), Text("data")],
                    //             ),
                    //           ],
                    //         ),
                    //       ],
                    //     ),
                    //   );
                    // },
                    // legendItemBuilder: (String name, dynamic series, dynamic point, int index) {
                    //   return Container(
                    //       margin: EdgeInsets.only(top: 20),
                    //       decoration: const BoxDecoration(color: Colors.red),
                    //       width: 100,
                    //       height: 10,
                    //       child: Row(children: [
                    //         Container(
                    //           decoration: BoxDecoration(
                    //               color: index == 0
                    //                   ? Colors.yellow
                    //                   : index == 1
                    //                       ? Colors.pink.shade300
                    //                       : index == 2
                    //                           ? Colors.blue
                    //                           : Colors.blue),
                    //           width: 10,
                    //           height: 30,
                    //         ),
                    //         Container(child: Text(index.toString())),
                    //       ]));
                    // },
                    overflowMode: LegendItemOverflowMode.wrap,
                    iconHeight: 25,
                  ),
                  // tooltipBehavior: _tooltipBehavior,
                  palette: [Colors.pink.shade300, Colors.yellow, Colors.blue],
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
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(color: Colors.grey, offset: Offset(0.0, 0.0), blurRadius: 5 //(x,y)
                        ),
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
