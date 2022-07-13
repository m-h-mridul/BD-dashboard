import 'package:dashboard_dcall/contoller/DashboardCOntroller.dart';
import 'package:dashboard_dcall/utils/helper/Sizemanager.dart';
import 'package:dashboard_dcall/utils/helper/callingName.dart';
import 'package:dashboard_dcall/utils/helper/media.dart';
import 'package:dashboard_dcall/widget/dialogbox.dart';
import 'package:flutter/material.dart';
import '../../utils/helper/imagename.dart';
import '../../widget/patientbed.dart';

class Patientbag extends StatelessWidget {
   Patientbag({Key? key}) : super(key: key);
   DashboardController controller = DashboardController.tofind;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: SizeManager.verticale, horizontal: SizeManager.horzintal),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.start,
        spacing: SizeManager.wrapspacing,
        children: [
          InkWell(
            onTap: () {
              infogetdialogbox(
                  key: CallingName.icubed,
                  width: SizeManager.dialogboxwidth,
                  height: SizeManager.dialogboxheight,
                  messagetext: CallingName.patientbeddeatils,
                  value: controller.hospitaldata.value.icubed);
            },
            child: Patiendbed(
              CallingName.icubed,
              controller.hospitaldata.value.icubed,
              ImageAssets.icu2,
              insidewidth: MediaQuerypage.screenWidth! * 0.18,
              insideheight: MediaQuerypage.screenHeight! * 0.22,
              boxheight: MediaQuerypage.screenHeight! * 0.3,
              boxwidth: MediaQuerypage.screenWidth! * 0.2,
            ),
          ),
          InkWell(
            onTap: () {
              infogetdialogbox(
                  key: CallingName.cabin,
                  width: SizeManager.dialogboxwidth,
                  height: SizeManager.dialogboxheight,
                  messagetext: CallingName.patientbeddeatils,
                  value: controller.hospitaldata.value.cabin);
            },
            child: Patiendbed(
              CallingName.cabin,
               controller.hospitaldata.value.cabin,
              ImageAssets.cabin,
              insidewidth: MediaQuerypage.screenWidth! * 0.18,
              insideheight: MediaQuerypage.screenHeight! * 0.22,
              boxheight: MediaQuerypage.screenHeight! * 0.3,
              boxwidth: MediaQuerypage.screenWidth! * 0.2,
            ),
          ),
          InkWell(
            onTap: () {
              infogetdialogbox(
                  key: CallingName.room,
                  width: SizeManager.dialogboxwidth,
                  height: SizeManager.dialogboxheight,
                  messagetext: CallingName.patientbeddeatils,
                  value: controller.hospitaldata.value.room);
            },
            child: Patiendbed(
              CallingName.room,
               controller.hospitaldata.value.room,
              ImageAssets.room,
              insidewidth: MediaQuerypage.screenWidth! * 0.18,
              insideheight: MediaQuerypage.screenHeight! * 0.22,
              boxheight: MediaQuerypage.screenHeight! * 0.3,
              boxwidth: MediaQuerypage.screenWidth! * 0.2,
            ),
          ),
        ],
      ),
    );
  }
}
