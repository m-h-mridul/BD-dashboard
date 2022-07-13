import 'package:dashboard_dcall/contoller/DashboardCOntroller.dart';
import 'package:dashboard_dcall/stroage/stroage.dart';
import 'package:dashboard_dcall/utils/resourece/responsive.dart';
import 'package:dashboard_dcall/view/dashboard.dart';
import 'package:dashboard_dcall/view/desktop/loginui.dart';
import 'package:dashboard_dcall/view/mobile/loginuimobile.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'utils/resourece/themsdata.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  DashboardController controller =
      Get.put<DashboardController>(DashboardController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: gettheam(),
      home:
          // const DashBoard(),
          ///LoginUI()
          HiveBoxstraoage.userlogin
              ? Responsive(
                  desktop: LoginUI(),
                  mobile: LoginmobileUI(),
                  tablet: LoginUI(),
                )
              : DashBoard(),
    );
  }
}
