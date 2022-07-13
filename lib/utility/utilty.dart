
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:vrudi/utility/colors.dart';

class Utility {
  // static Future<bool> checkStoragePermission() async {
  //   var status = await Permission.storage.status;
  //   if (status.isDenied) {
  //     var status = await Permission.storage.request();
  //     return status.isGranted;
  //   } else if (status.isPermanentlyDenied) {
  //     openAppSettings();
  //     return false;
  //   }
  //   return true;
  // }

  // static Future<bool> checkCameraPermission() async {
  //   var status = await Permission.camera.status;
  //   if (status.isDenied) {
  //     var status = await Permission.camera.request();
  //     return status.isGranted;
  //   } else if (status.isPermanentlyDenied) {
  //     openAppSettings();
  //     return false;
  //   }
  //   return true;
  // }

  static showToast({required String msg}) {
    msg.isEmpty
        ? "Empty Message"
        : Fluttertoast.showToast(
            msg: msg, textColor: Colors.white, backgroundColor: ColorPrimary, gravity: ToastGravity.BOTTOM);
  }

  // static Future<String> findLocalPath() async {
  //   final directory = Platform.isAndroid ? await getTemporaryDirectory() : await getApplicationDocumentsDirectory();
  //   return directory.path;
  // }
  //
  // static String getFormatDate(DateTime dateTime) {
  //   String date = DateFormat('yyyy-MM-dd').format(dateTime).toString();
  //   debugPrint("date--> $date");
  //   return date;
  // }
  //
  // static String getFormatDate1(DateTime dateTime) {
  //   String date = DateFormat('dd-MMM-yyyy - ').add_jm().format(dateTime).toString();
  //   debugPrint("date--> $date");
  //   return date;
  // }

  // static showSingleAlert(BuildContext context, String msg,
  //     {String? title, Function? onCancel, Function? onOk, String? cancelText, String? okText}) {
  //   showCupertinoDialog(
  //       context: context,
  //       builder: (context) {
  //         return CupertinoAlertDialog(
  //           title: Text(title ?? "my_profit_key".tr()),
  //           content: Text("$msg"),
  //           actions: [
  //             TextButton(
  //                 onPressed: () {
  //                   if (onCancel != null) {
  //                     onCancel();
  //                     Navigator.pop(context);
  //                   } else {
  //                     Navigator.pop(context);
  //                   }
  //                 },
  //                 child: Text(cancelText ?? "cancel_key".tr())),
  //             TextButton(
  //                 onPressed: () {
  //                   if (onOk != null) {
  //                     onOk();
  //                     Navigator.pop(context);
  //                   } else {
  //                     Navigator.pop(context);
  //                   }
  //                 },
  //                 child: Text(okText ?? "ok_key".tr())),
  //           ],
  //         );
  //       });
  // }
}
