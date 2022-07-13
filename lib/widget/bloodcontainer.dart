import 'package:dashboard_dcall/utils/helper/media.dart';
import 'package:flutter/material.dart';
import '../utils/resourece/ColorManager.dart';
import '../utils/resourece/textstyle.dart';

Widget bloodContainer(
        double width, double height, String bloodgrope, String bloodbags) =>
    Container(
      width: width,
      height: height,
      padding: EdgeInsets.symmetric(
          vertical: MediaQuerypage.safeBlockVertical! * 0.7,
          horizontal: MediaQuerypage.safeBlockHorizontal! * 0.5),
      decoration: BoxDecoration(
          color: ColorManager.white, borderRadius: BorderRadius.circular(12.0)),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              bloodgrope,
              style: TextStyleManager.black16,
              textAlign: TextAlign.center,
            ),
            const Divider(
              color: Colors.red,
            ),
            Text(
              bloodbags,
              style: TextStyleManager.black16,
            ),
          ]),
    );
