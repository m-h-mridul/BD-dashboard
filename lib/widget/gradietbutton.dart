import 'package:dashboard_dcall/contoller/DashboardCOntroller.dart';
import 'package:dashboard_dcall/utils/helper/media.dart';
import 'package:dashboard_dcall/utils/resourece/ColorManager.dart';
import 'package:flutter/material.dart';
import '../utils/resourece/textstyle.dart';

DashboardController controller = DashboardController.tofind;
Widget gradietbutton(
        {String? buttoname,
        double? width,
        double? height,
      }) =>
    Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuerypage.safeBlockVertical! * 2),
      child: Container(
        width: width!, // MediaQuerypage.screenWidth! * 0.15,
        height: height!, //MediaQuerypage.screenHeight! * 0.07,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              ColorManager.boldtext,
              Color.fromARGB(255, 128, 203, 196),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(MediaQuerypage.pixel! * 6),
          boxShadow: const [
            BoxShadow(
              color: ColorManager.black12,
              offset: Offset(5, 5),
              blurRadius: 10,
            )
          ],
        ),

        child: Center(
          child: Text(buttoname!, style: TextStyleManager.white16),
        ),
      ),
    );
