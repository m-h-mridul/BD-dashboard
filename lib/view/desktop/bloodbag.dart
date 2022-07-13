import 'package:flutter/material.dart';
import '../../contoller/DashboardCOntroller.dart';
import '../../utils/helper/Sizemanager.dart';
import '../../utils/helper/callingName.dart';
import '../../utils/helper/media.dart';
import '../../widget/bloodcontainer.dart';
import '../../widget/dialogbox.dart';


double daigeotboxheight = MediaQuerypage.screenHeight! * 0.2;
double daigeotboxweith = MediaQuerypage.screenWidth! * 0.3; 

class Bloodbag extends StatelessWidget {
  Bloodbag({Key? key}) : super(key: key);
  DashboardController controller = DashboardController.tofind;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuerypage.safeBlockVertical! * 2,
        horizontal: MediaQuerypage.safeBlockHorizontal! * 2,
      ),
      child: Wrap(
        spacing: MediaQuerypage.smallSizeWidth! * 1,
        runSpacing: MediaQuerypage.smallSizeHeight! * 2,
        children: [
          InkWell(
              onTap: () {
                infogetdialogbox(
                  width: SizeManager.dialogboxwidth,
                  height: SizeManager.dialogboxheight,
                  key: CallingName.apositive,
                  messagetext: CallingName.bloodamount,
                  value: controller.hospitaldata.value.A_positive,
                );
              },
              child: bloodContainer(
                SizeManager.bloodbagwiedth,
                SizeManager.bloodbagheight,
                CallingName.apositive,
                controller.hospitaldata.value.A_positive,
              )),
          InkWell(
            onTap: () {
              infogetdialogbox(
                width: SizeManager.dialogboxwidth,
                height: SizeManager.dialogboxheight,
                key: CallingName.bpositive,
                messagetext: CallingName.bloodamount,
                value: controller.hospitaldata.value.B_positive,
              );
            },
            child: bloodContainer(
              SizeManager.bloodbagwiedth,
              SizeManager.bloodbagheight,
              CallingName.bpositive,
              controller.hospitaldata.value.B_positive,
            ),
          ),
          InkWell(
            onTap: () {
              infogetdialogbox(
                width: SizeManager.dialogboxwidth,
                height: SizeManager.dialogboxheight,
                key: CallingName.opositive,
                messagetext: CallingName.bloodamount,
                value: controller.hospitaldata.value.AB_positive,
              );
            },
            child: bloodContainer(
                SizeManager.bloodbagwiedth,
                SizeManager.bloodbagheight,
                CallingName.opositive,
                controller.hospitaldata.value.AB_positive),
          ),
          InkWell(
            onTap: () {
              infogetdialogbox(
                width: SizeManager.dialogboxwidth,
                height: SizeManager.dialogboxheight,
                key: CallingName.abpositive,
                messagetext: CallingName.bloodamount,
                value: controller.hospitaldata.value.O_positive,
              );
            },
            child: bloodContainer(
              SizeManager.bloodbagwiedth,
              SizeManager.bloodbagheight,
              CallingName.abpositive,
              controller.hospitaldata.value.O_positive,
            ),
          ),
          InkWell(
            onTap: () {
              infogetdialogbox(
                width: SizeManager.dialogboxwidth,
                height: SizeManager.dialogboxheight,
                key: CallingName.anegative,
                messagetext: CallingName.bloodamount,
                value: controller.hospitaldata.value.A_negative,
              );
            },
            child: bloodContainer(
                SizeManager.bloodbagwiedth,
                SizeManager.bloodbagheight,
                CallingName.anegative,
                controller.hospitaldata.value.A_negative),
          ),
          InkWell(
            onTap: () {
              infogetdialogbox(
                width: SizeManager.dialogboxwidth,
                height: SizeManager.dialogboxheight,
                key: CallingName.bnegative,
                messagetext: CallingName.bloodamount,
                value: controller.hospitaldata.value.B_negative,
              );
            },
            child: bloodContainer(
                SizeManager.bloodbagwiedth,
                SizeManager.bloodbagheight,
                CallingName.bnegative,
                controller.hospitaldata.value.B_negative),
          ),
          InkWell(
            onTap: () {
              infogetdialogbox(
                width: SizeManager.dialogboxwidth,
                height: SizeManager.dialogboxheight,
                key: CallingName.onegative,
                messagetext: CallingName.bloodamount,
                value: controller.hospitaldata.value.AB_negative,
              );
            },
            child: bloodContainer(
                SizeManager.bloodbagwiedth,
                SizeManager.bloodbagheight,
                CallingName.onegative,
                controller.hospitaldata.value.AB_negative),
          ),
          InkWell(
            onTap: () {
              //**dialog box open */
              infogetdialogbox(
                width: SizeManager.dialogboxwidth,
                height: SizeManager.dialogboxheight,
                key: CallingName.abanegative,
                messagetext: CallingName.bloodamount,
                value: controller.hospitaldata.value.O_negative,
              );
            },
            child: bloodContainer(
                SizeManager.bloodbagwiedth,
                SizeManager.bloodbagheight,
                CallingName.abanegative,
                controller.hospitaldata.value.O_negative),
          ),
        ],
      ),
    );
  }
}
