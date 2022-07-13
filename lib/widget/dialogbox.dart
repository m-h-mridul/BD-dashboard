
import 'package:dashboard_dcall/utils/helper/Sizemanager.dart';
import 'package:dashboard_dcall/utils/helper/media.dart';
import 'package:dashboard_dcall/utils/resourece/ColorManager.dart';
import 'package:dashboard_dcall/utils/resourece/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'gradietbutton.dart';

infogetdialogbox(
    {double? width,
    double? height,
    String? key,
    String? messagetext,
    String? value,
    String? button}) {
  TextEditingController texteditorvalue = TextEditingController(text: value);
  return Get.defaultDialog(
    title: key!,
    backgroundColor: ColorManager.dialogbox,
    titleStyle: TextStyleManager.black16,
    middleTextStyle: TextStyleManager.white16,
    radius: MediaQuerypage.pixel! * 12,
    content: SizedBox(
      width: width!,
      height: height!,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              messagetext!,
              style: TextStyleManager.white16,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: width * 0.7,
                child: TextFormField(
                  controller: texteditorvalue,
                  // expands: true,
                  // maxLines: null,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      // borderSide: BorderSide.none,
                      borderRadius: SizeManager.borderRadius,
                      // BorderRadius.circular(MediaQuerypage.pixel! * 6),
                    ),
                    filled: true,
                    fillColor: ColorManager.white,
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.04,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      int number = int.parse(texteditorvalue.text.toString());
                      number = number + 1;
                      texteditorvalue.text = number.toString();
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: MediaQuerypage.safeBlockVertical! * 0.2,
                        horizontal: MediaQuerypage.safeBlockHorizontal! * 0.2,
                      ),
                      height: height * 0.17,
                      width: width * 0.2,
                      decoration: const BoxDecoration(
                        color: ColorManager.white,
                      ),
                      child: Center(
                        child: Text(
                          '+',
                          style: TextStyle(
                            fontSize: MediaQuerypage.fontsize! * 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.02,
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {
                      int number = int.parse(texteditorvalue.text.toString());
                      if (number > 0) {
                        number = number - 1;
                        texteditorvalue.text = number.toString();
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: MediaQuerypage.safeBlockVertical! * 0.2,
                        horizontal: MediaQuerypage.safeBlockHorizontal! * 0.2,
                      ),
                      height: height * 0.17,
                      width: width * 0.2,
                      decoration: const BoxDecoration(
                        color: ColorManager.white,
                      ),
                      child: Center(
                        child: Text(
                          '-',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: MediaQuerypage.fontsize! * 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          InkWell(
            onTap: () {
              controller.savedataindatabase(
                  key: key, value: texteditorvalue.text.trim().toString());
              controller.getabout();
              Get.back();
            },
            child: gradietbutton(
              buttoname: 'Update',
              width: width * 0.4,
              height: height * 0.2,
            ),
          ),
        ],
      ),
    ),
  );
}
