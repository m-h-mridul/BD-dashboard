import 'package:dashboard_dcall/contoller/DashboardCOntroller.dart';
import 'package:dashboard_dcall/utils/helper/callingName.dart';
import 'package:dashboard_dcall/utils/resourece/ColorManager.dart';
import 'package:dashboard_dcall/view/mobile/bloodbag%20copy.dart';
import 'package:dashboard_dcall/view/mobile/mobiledoctoradd.dart';
import 'package:dashboard_dcall/view/mobile/paitentbag.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/route_manager.dart';
import '../../utils/helper/imagename.dart';
import '../../utils/helper/media.dart';
import '../../utils/resourece/textstyle.dart';
import '../desktop/logout_dialog.dart';
import '../desktop/requestview.dart';
import 'about copy.dart';
import 'mobilebdy.dart';

class MobileUI extends StatelessWidget {
  MobileUI({Key? key}) : super(key: key);
  DashboardController controller = DashboardController.tofind;
  @override
  Widget build(BuildContext context) {
    var viewselect = 0.obs;
    //***add all screen for bodypart
    //*here most off the item  */
    List screenchange = [
      Mobilebody(),
      const Requestview(),
      MobileDoctorAdd(),
      Bloodbagmobile(),
      PatientbagMobile(),
      AboutMobile()
    ];
    return Scaffold(
        backgroundColor: ColorManager.background,
        appBar: AppBar(
          title: Obx(
            () => Text(
              controller.dataloading.value
                  ? CallingName.hostpitalName
                  : controller.hospitaldata.value.hispitalName!,
              style: TextStyleManager.white18,
            ),
          ),
          actions: [
            Tooltip(
              message: 'Request',
              child: CircleAvatar(
                child: Image.asset(
                  ImageAssets.request,
                  fit: BoxFit.cover,
                ),
                //backgroundImage: AssetImage(ImageAssets.request),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              iconSize: 30,
              onPressed: () {
                Logout(context);
              },
            ),
          ],
        ),
        drawer: SizedBox(
          child: Drawer(
            width: MediaQuerypage.screenWidth! * 0.7,
            backgroundColor: ColorManager.divider,
            child: Column(children: [
              SizedBox(
                  width: MediaQuerypage.screenWidth!,
                  height: MediaQuerypage.screenHeight! * 0.1),
              Card(
                child: ListTile(
                  title: Text(
                    CallingName.homepage,
                    style: TextStyleManager.optioncolos18,
                  ),
                  onTap: () {
                    viewselect.value = 0;
                    Get.back();
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    CallingName.requet,
                    style: TextStyleManager.optioncolos18,
                  ),
                  onTap: () {
                    viewselect.value = 1;
                    Get.back();
                  },
                  selectedColor: viewselect.value == 1
                      ? ColorManager.background
                      : ColorManager.white,
                ),
              ),
              Card(
                child: ListTile(
                  selectedColor: viewselect.value == 2
                      ? ColorManager.background
                      : ColorManager.white,
                  title: Text(
                    CallingName.doctorpage,
                    style: TextStyleManager.optioncolos18,
                  ),
                  onTap: () {
                    viewselect.value = 2;
                    Get.back();
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    CallingName.bloodbag,
                    style: TextStyleManager.optioncolos18,
                  ),
                  onTap: () {
                    viewselect.value = 3;
                    Get.back();
                  },
                  selectedColor: viewselect.value == 3
                      ? ColorManager.background
                      : ColorManager.white,
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    CallingName.patientbed,
                    style: TextStyleManager.optioncolos18,
                  ),
                  onTap: () {
                    viewselect.value = 4;
                    Get.back();
                  },
                  selectedColor: viewselect.value == 4
                      ? ColorManager.background
                      : ColorManager.white,
                ),
              ),
              const Spacer(),
              Card(
                child: ListTile(
                  title: Text(
                    CallingName.about,
                    style: TextStyleManager.optioncolos18,
                  ),
                  onTap: () {
                    viewselect.value = 5;
                    Get.back();
                  },
                  selectedColor: viewselect.value == 5
                      ? ColorManager.background
                      : ColorManager.white,
                ),
              ),
              SizedBox(
                  width: MediaQuerypage.screenWidth!,
                  height: MediaQuerypage.screenHeight! * 0.05),
            ]),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuerypage.safeBlockVertical!,
              horizontal: MediaQuerypage.safeBlockHorizontal!),
          child: Obx(() => screenchange[viewselect.value]),
        ));
  }
}
