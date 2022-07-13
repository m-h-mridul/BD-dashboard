// ignore_for_file: must_be_immutable

import 'package:dashboard_dcall/contoller/DashboardCOntroller.dart';
import 'package:dashboard_dcall/utils/helper/imagename.dart';
import 'package:dashboard_dcall/utils/helper/media.dart';
import 'package:dashboard_dcall/utils/resourece/ColorManager.dart';
import 'package:dashboard_dcall/view/tab/tabbody.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../utils/helper/callingName.dart';
import '../../utils/resourece/textstyle.dart';
import '../desktop/about.dart';
import '../desktop/bloodbag.dart';
import '../desktop/logout_dialog.dart';
import '../tab/paitentbag.dart';
import '../tab/requestview.dart';
import 'doctoradd.dart';

class TabUI extends StatelessWidget {
  TabUI({Key? key}) : super(key: key);

  DashboardController controller = DashboardController.tofind;

  @override
  Widget build(BuildContext context) {
    var viewselect = 2.obs;
    //***add all screen for bodypart
    //*here most off the item  */
    List screenchange = [
      Tabbody(),
      const Requestview(),
      DoctorAdd(),
      Bloodbag(),
      Patientbag(),
      About()
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.background,
        appBar: AppBar(
          title: Obx(() => Text(
                controller.dataloading.value
                    ? CallingName.hostpitalName
                    : controller.hospitaldata.value.hispitalName!,
                style: TextStyleManager.black18,
              )),
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
        body: Obx(
          () => Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuerypage.safeBlockVertical! * 0.22,
                      horizontal: MediaQuerypage.safeBlockHorizontal! * .5),
                  //color: ColorManager.background,
                  color: ColorManager.divider,
                  child: Column(children: [
                    Card(
                      child: ListTile(
                        title: Text(
                          CallingName.homepage,
                          style: TextStyleManager.optioncolos18,
                        ),
                        onTap: () {
                          viewselect.value = 0;
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
                        },
                        selectedColor: viewselect.value == 5
                            ? ColorManager.background
                            : ColorManager.white,
                      ),
                    ),
                  ]),
                ),
              ),
              Expanded(flex: 6, child: screenchange[viewselect.value])
            ],
          ),
        ),
      ),
    );
  }
}
