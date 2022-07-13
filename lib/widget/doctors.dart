import 'package:dashboard_dcall/utils/resourece/textstyle.dart';
import 'package:flutter/material.dart';
import '../utils/helper/media.dart';
import '../utils/resourece/ColorManager.dart';

Widget doctorview(
        {double? boxwidth,
        double? boxheight,
        double? imagewidth,
        double? imageheight,
        String? imagename}) =>
    Container(
      width: boxwidth,
      height: boxheight,
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuerypage.safeBlockHorizontal!,
        vertical: MediaQuerypage.safeBlockVertical! * 1.5,
      ),
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(MediaQuerypage.pixel! * 12),
        border: Border.all(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Image.asset(
              imagename!,
              fit: BoxFit.fill,
            ),
          ),
          Text(
            'name',
            style: TextStyleManager.black18,
          ),
          Text(
            'desination',
            style: TextStyleManager.black16,
          ),
        ],
      ),
    );
