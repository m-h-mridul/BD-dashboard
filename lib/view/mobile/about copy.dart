import 'package:dashboard_dcall/utils/helper/callingName.dart';
import 'package:dashboard_dcall/utils/helper/media.dart';
import 'package:dashboard_dcall/utils/resourece/textstyle.dart';
import 'package:flutter/material.dart';
import '../../contoller/DashboardCOntroller.dart';
import '../../utils/helper/Sizemanager.dart';
import '../../utils/helper/imagename.dart';

class AboutMobile extends StatelessWidget {
  AboutMobile({Key? key}) : super(key: key);
  DashboardController controller = DashboardController.tofind;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuerypage.screenWidth,
      padding: EdgeInsets.symmetric(
          vertical: MediaQuerypage.safeBlockVertical!,
          horizontal: MediaQuerypage.safeBlockHorizontal!),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            //**logo image */
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuerypage.safeBlockVertical! * 2,
                  horizontal: SizeManager.widgethorzintal * .8),
              child: Image.asset(
                ImageAssets.loginicon,
                width: MediaQuerypage.screenWidth! * 0.5,
                height: MediaQuerypage.screenHeight! * 0.2,
                fit: BoxFit.fill,
              ),
            ),

            Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                          top: MediaQuerypage.smallSizeHeight! * 2,
                        ),
                        child: Text(CallingName.hostpitalName,
                            style: TextStyleManager.black16),
                      ),
                      Container(
                        child: Center(
                          child: Text(
                              controller.hospitaldata.value.hispitalName
                                  .toString(),
                              textAlign: TextAlign.start,
                              style: TextStyleManager.black18),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: MediaQuerypage.safeBlockVertical! * 1,
                            horizontal:
                                MediaQuerypage.safeBlockHorizontal! * 1),
                        width: MediaQuerypage.screenWidth! * 0.7,
                        height: MediaQuerypage.screenHeight! * 0.08,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(SizeManager.circularradius),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                          top: MediaQuerypage.smallSizeHeight! * 2,
                        ),
                        child: Text(CallingName.heading_text_location,
                            style: TextStyleManager.black16),
                      ),
                      Container(
                        child: Center(
                          child: Text(
                              controller.hospitaldata.value.location.toString(),
                              textAlign: TextAlign.start,
                              style: TextStyleManager.black18),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: MediaQuerypage.safeBlockVertical! * 1,
                            horizontal:
                                MediaQuerypage.safeBlockHorizontal! * 1),
                        width: MediaQuerypage.screenWidth! * 0.7,
                        height: MediaQuerypage.screenHeight! * 0.08,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(SizeManager.circularradius),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                          top: MediaQuerypage.smallSizeHeight! * 2,
                        ),
                        child: Text(CallingName.heading_text_email,
                            style: TextStyleManager.black16),
                      ),
                      Container(
                        child: Center(
                          child: Text(
                              controller.hospitaldata.value.email.toString(),
                              textAlign: TextAlign.start,
                              style: TextStyleManager.black18),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: MediaQuerypage.safeBlockVertical! * 1,
                            horizontal:
                                MediaQuerypage.safeBlockHorizontal! * 1),
                        width: MediaQuerypage.screenWidth! * 0.7,
                        height: MediaQuerypage.screenHeight! * 0.08,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(SizeManager.circularradius),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 10,
                            top: MediaQuerypage.smallSizeHeight! * 2,
                          ),
                          child: Text(CallingName.heading_text_location,
                              style: TextStyleManager.black16),
                        ),
                        Container(
                          child: Center(
                            child: Text(
                                controller.hospitaldata.value.contact
                                    .toString(),
                                textAlign: TextAlign.start,
                                style: TextStyleManager.black18),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: MediaQuerypage.safeBlockVertical! * 1,
                              horizontal:
                                  MediaQuerypage.safeBlockHorizontal! * 1),
                          width: MediaQuerypage.screenWidth! * 0.7,
                          height: MediaQuerypage.screenHeight! * 0.08,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(SizeManager.circularradius),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                      ]),
                ]),
          ],
        ),
      ),
    );
  }
}
