import 'package:dashboard_dcall/contoller/DashboardCOntroller.dart';
import 'package:dashboard_dcall/utils/helper/Sizemanager.dart';
import 'package:dashboard_dcall/utils/helper/callingName.dart';
import 'package:dashboard_dcall/utils/helper/media.dart';
import 'package:dashboard_dcall/widget/dialogbox.dart';
import 'package:flutter/material.dart';
import '../../utils/helper/imagename.dart';
import '../../widget/patientbed.dart';

double patientbedinsidewidth = MediaQuerypage.screenWidth! * 0.3;
double patientbedinsideheight = MediaQuerypage.screenHeight! * 0.18;
double patientbedwidth = MediaQuerypage.screenWidth! * 0.4;
double patientbedheight = MediaQuerypage.screenHeight! * 0.25;

class PatientbagMobile extends StatelessWidget {
  PatientbagMobile({Key? key}) : super(key: key);
  DashboardController controller = DashboardController.tofind;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: SizeManager.verticale, horizontal: SizeManager.horzintal),
      child: Wrap(
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.start,
        spacing: SizeManager.wrapspacing * 1,
        runSpacing: MediaQuerypage.screenHeight! * 0.04,
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
              insidewidth: patientbedinsidewidth,
              insideheight: patientbedinsideheight,
              boxheight: patientbedheight,
              boxwidth: patientbedwidth,
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
              insidewidth: patientbedinsidewidth,
              insideheight: patientbedinsideheight,
              boxheight: patientbedheight,
              boxwidth: patientbedwidth,
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
              insidewidth: patientbedinsidewidth,
              insideheight: patientbedinsideheight,
              boxheight: patientbedheight,
              boxwidth: patientbedwidth,
            ),
          ),
        ],
      ),
    );
  }
}
