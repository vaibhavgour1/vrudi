import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vrudi/api/api_provider.dart';
import 'package:vrudi/api/endpoints.dart';
import 'package:vrudi/ui/splash/splash.dart';

BaseOptions baseOptions = BaseOptions(
  baseUrl: Endpoint.BASE_URL,
  receiveTimeout: 60000,
  sendTimeout: 60000,
  responseType: ResponseType.json,
  maxRedirects: 3,
);
Dio dio = Dio(baseOptions);
ApiProvider apiProvider = ApiProvider();

ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    splashColor: Colors.transparent,
    dividerColor: Colors.transparent,
    iconTheme: const IconThemeData(
      color: Colors.red,
      opacity: 1,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25)))),
    // accentTextTheme: Theme.of(context).textTheme,
    unselectedWidgetColor: Colors.black,
    fontFamily: GoogleFonts.openSans().fontFamily,
    primaryColor: Colors.red,
    primaryColorDark: Colors.red,
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      buttonColor: Colors.red,
      textTheme: ButtonTextTheme.primary,
    ),
    inputDecorationTheme: InputDecorationTheme(
        hoverColor: Colors.red,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
        disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
        errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
        focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),

        // filled: true,
        // fillColor: Color.fromRGBO(242, 242, 242, 1),
        hintStyle: TextStyle(
          color: Color.fromRGBO(85, 85, 85, 1.0),
          fontSize: 13,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        alignLabelWithHint: true,
        labelStyle: TextStyle(
          // color: Colors.red,
          fontSize: 13,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        errorStyle: TextStyle(color: Colors.red, fontSize: 15)),
    appBarTheme: const AppBarTheme(
      elevation: 1,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.red,
        // statusBarIconBrightness: Brightness.light,
      ),
      brightness: Brightness.dark,
      backgroundColor: Colors.red,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      centerTitle: true,
      actionsIconTheme: IconThemeData(
        color: Colors.white,
      ),
      // toolbarTextStyle: Theme.of(context).textTheme.headline6!.merge(TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      // titleTextStyle: Theme.of(context).textTheme.headline6!.merge(TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
    ));
void main() {
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  // dio.interceptors.add(LogInterceptor(
  //     responseBody: true,
  //     responseHeader: false,
  //     requestBody: true,
  //     request: true,
  //     requestHeader: true,
  //     error: true,
  //     logPrint: (text) {
  //       log(text.toString());
  //     }));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //  RefreshController _refreshController = RefreshController(initialRefresh: false);
  // refresh() {
  //   log("refresh hua");

  //   _refreshController.refreshCompleted();

  //   //setState(() {});
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Vrudi",
      theme: themeData,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
