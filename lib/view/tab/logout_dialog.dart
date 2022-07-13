// import 'package:dashboard_dcall/contoller/DashboardCOntroller.dart';
// import 'package:dashboard_dcall/model/userinformation.dart';
// import 'package:dashboard_dcall/stroage/stroage.dart';
// import 'package:dashboard_dcall/utils/resourece/textstyle.dart';
// import 'package:dashboard_dcall/view/desktop/loginui.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get_instance/get_instance.dart';
// import 'package:get/route_manager.dart';
// import 'package:get/utils.dart';

// HiveBoxstraoage stroage = HiveBoxstraoage();
// Logout(BuildContext context) {
//   // set up the button
//   Widget C_Button = TextButton(
//     child: Text("Cancel"),
//     onPressed: () {
//       Navigator.of(context).pop();
//     },
//   );
//   Widget L_Button = TextButton(
//     child: Text("Logout"),
//     onPressed: () async {
//       // make flase user that he/she are off line
//       // signout from firebase
//       await FirebaseAuth.instance.signOut();
//       await stroage.delate_value(key: UserInformation.userID);
//       Get.delete<DashboardController>();
//       Get.deleteAll();

//       // goto the app home screen
//       Get.offAll(LoginUI());
//     },
//   );

//   // set up the AlertDialog
//   AlertDialog alert = AlertDialog(
//     title: Text(
//       "Logout!",
//       style: TextStyleManager.black16,
//     ),
//     content: const Text("You want to Logout ...."),
//     shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.all(Radius.circular(18.0))),
//     actions: [C_Button, L_Button],
//   );

//   // show the dialog
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return alert;
//     },
//   );
// }
