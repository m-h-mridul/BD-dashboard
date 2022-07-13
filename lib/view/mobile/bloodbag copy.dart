import 'package:flutter/material.dart';
import '../../contoller/DashboardCOntroller.dart';
import '../../utils/helper/Sizemanager.dart';
import '../../utils/helper/callingName.dart';
import '../../utils/helper/media.dart';
import '../../widget/bloodcontainer.dart';
import '../../widget/dialogbox.dart';

double bloodbagwiedth = MediaQuerypage.screenWidth! * 0.28;
double bloodbagheight = MediaQuerypage.screenHeight! * 0.17;

double daigeotboxheight = MediaQuerypage.screenHeight! * 0.2;
double daigeotboxweith = MediaQuerypage.screenWidth! * 0.6;

class Bloodbagmobile extends StatelessWidget {
  Bloodbagmobile({Key? key}) : super(key: key);
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
                  width: daigeotboxweith,
                  height: daigeotboxheight,
                  key: CallingName.apositive,
                  messagetext: CallingName.bloodamount,
                  value: controller.hospitaldata.value.A_positive,
                );
              },
              child: bloodContainer(
                bloodbagwiedth,
                bloodbagheight,
                CallingName.apositive,
                controller.hospitaldata.value.A_positive,
              )),
          InkWell(
            onTap: () {
              infogetdialogbox(
                width: daigeotboxweith,
                height: daigeotboxheight,
                key: CallingName.bpositive,
                messagetext: CallingName.bloodamount,
                value: controller.hospitaldata.value.B_positive,
              );
            },
            child: bloodContainer(
              bloodbagwiedth,
              bloodbagheight,
              CallingName.bpositive,
              controller.hospitaldata.value.B_positive,
            ),
          ),
          InkWell(
            onTap: () {
              infogetdialogbox(
                width: daigeotboxweith,
                height: daigeotboxheight,
                key: CallingName.opositive,
                messagetext: CallingName.bloodamount,
                value: controller.hospitaldata.value.AB_positive,
              );
            },
            child: bloodContainer(
                bloodbagwiedth,
                bloodbagheight,
                CallingName.opositive,
                controller.hospitaldata.value.AB_positive),
          ),
          InkWell(
            onTap: () {
              infogetdialogbox(
                width: daigeotboxweith,
                height: daigeotboxheight,
                key: CallingName.abpositive,
                messagetext: CallingName.bloodamount,
                value: controller.hospitaldata.value.O_positive,
              );
            },
            child: bloodContainer(
              bloodbagwiedth,
              bloodbagheight,
              CallingName.abpositive,
              controller.hospitaldata.value.O_positive,
            ),
          ),
          InkWell(
            onTap: () {
              infogetdialogbox(
                width: daigeotboxweith,
                height: daigeotboxheight,
                key: CallingName.anegative,
                messagetext: CallingName.bloodamount,
                value: controller.hospitaldata.value.A_negative,
              );
            },
            child: bloodContainer(
                bloodbagwiedth,
                bloodbagheight,
                CallingName.anegative,
                controller.hospitaldata.value.A_negative),
          ),
          InkWell(
            onTap: () {
              infogetdialogbox(
                width: daigeotboxweith,
                height: daigeotboxheight,
                key: CallingName.bnegative,
                messagetext: CallingName.bloodamount,
                value: controller.hospitaldata.value.B_negative,
              );
            },
            child: bloodContainer(
                bloodbagwiedth,
                bloodbagheight,
                CallingName.bnegative,
                controller.hospitaldata.value.B_negative),
          ),
          InkWell(
            onTap: () {
              infogetdialogbox(
                width: daigeotboxweith,
                height: daigeotboxheight,
                key: CallingName.onegative,
                messagetext: CallingName.bloodamount,
                value: controller.hospitaldata.value.AB_negative,
              );
            },
            child: bloodContainer(
                bloodbagwiedth,
                bloodbagheight,
                CallingName.onegative,
                controller.hospitaldata.value.AB_negative),
          ),
          InkWell(
            onTap: () {
              //**dialog box open */
              infogetdialogbox(
                width: daigeotboxweith,
                height: daigeotboxheight,
                key: CallingName.abanegative,
                messagetext: CallingName.bloodamount,
                value: controller.hospitaldata.value.O_negative,
              );
            },
            child: bloodContainer(
                bloodbagwiedth,
                bloodbagheight,
                CallingName.abanegative,
                controller.hospitaldata.value.O_negative),
          ),
        ],
      ),
    );
  }
}
