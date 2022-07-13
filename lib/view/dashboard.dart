import 'package:dashboard_dcall/contoller/DashboardCOntroller.dart';
import 'package:dashboard_dcall/utils/helper/media.dart';
import 'package:dashboard_dcall/utils/resourece/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'desktop/desktopui.dart';
import 'mobile/mobileui.dart';
import 'tab/tabui.dart';

class DashBoard extends StatelessWidget {
   DashBoard({Key? key}) : super(key: key);
  static const name = 'Dashboard';
   DashboardController controller = Get.put<DashboardController>(DashboardController());
  @override
  Widget build(BuildContext context) {
    //for set screen size
    MediaQuerypage.init(context);
    return  Responsive(
      desktop: Desktop(),
      mobile: MobileUI(),
      tablet: TabUI(),
    );
  }
}
