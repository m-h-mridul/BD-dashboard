// ignore_for_file: non_constant_identifier_names

import 'package:dashboard_dcall/utils/helper/media.dart';
import 'package:dashboard_dcall/utils/resourece/ColorManager.dart';
import 'package:dashboard_dcall/utils/resourece/textstyle.dart';
import 'package:flutter/material.dart';

Widget Patiendbed(
  String nameofbed,
  String numberofemptybed,
  String imagename, {
  double? insidewidth,
  double? insideheight,
  double? boxwidth,
  double? boxheight,
}) =>
    Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuerypage.safeBlockHorizontal!,
          vertical: MediaQuerypage.safeBlockVertical! * 1.5),
      width: boxwidth,
      height: boxheight,
      decoration: BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.circular(MediaQuerypage.pixel! * 12),
          border: Border.all()),
      child: Wrap(
        direction: Axis.horizontal,
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.center,
        children: [
          Image.asset(
            imagename,
            fit: BoxFit.fill,
            width: insidewidth,
            height: insideheight,
          ),
          Text(
            nameofbed + ' : ' + numberofemptybed,
            style: TextStyleManager.black18,
          ),
        ],
      ),
    );
