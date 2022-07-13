import 'package:dashboard_dcall/utils/helper/media.dart';
import 'package:dashboard_dcall/widget/doctors.dart';
import 'package:dashboard_dcall/widget/patientbed.dart';
import 'package:flutter/material.dart';
import '../../contoller/DashboardCOntroller.dart';
import '../../utils/helper/callingName.dart';
import '../../utils/helper/imagename.dart';
import '../../utils/resourece/textstyle.dart';
import '../../../../widget/bloodcontainer.dart';
import '../../model/hospitaldetails.dart';

double bloodbagwiedth = MediaQuerypage.screenWidth! * 0.082;
double bloodbagheight = MediaQuerypage.screenHeight! * 0.2;

class Dashboradbody extends StatelessWidget {
  Dashboradbody({Key? key}) : super(key: key);

  DashboardController controller = DashboardController.tofind;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuerypage.safeBlockVertical!,
          horizontal: MediaQuerypage.safeBlockHorizontal!),
      child: SingleChildScrollView(
        child: StreamBuilder<Hospitaldetails>(
            stream: controller.getabout(),
            builder: (BuildContext context, snapshot) {
              if (snapshot.hasError) {
                return Text('Something went wrong ${snapshot.hasError}');
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                    child: Text(
                  "Loading",
                  style: TextStyleManager.black18,
                ));
              }
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuerypage.safeBlockHorizontal!,
                        vertical: MediaQuerypage.safeBlockVertical!),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          CallingName.bloodbag,
                          style: TextStyleManager.red22,
                        ),
                        Text(
                          '126',
                          style: TextStyleManager.red22,
                        ),
                      ],
                    ),
                  ),
                  //**blood bag view in dashboard */
                  Wrap(
                    spacing: MediaQuerypage.smallSizeWidth! * 1,
                    runSpacing: MediaQuerypage.smallSizeHeight! * 2,
                    children: [
                      bloodContainer(bloodbagwiedth, bloodbagheight,
                          CallingName.apositive, snapshot.data!.A_positive),
                      bloodContainer(bloodbagwiedth, bloodbagheight,
                          CallingName.bpositive, snapshot.data!.B_positive),
                      bloodContainer(bloodbagwiedth, bloodbagheight,
                          CallingName.opositive, snapshot.data!.AB_positive),
                      bloodContainer(bloodbagwiedth, bloodbagheight,
                          CallingName.abpositive, snapshot.data!.O_positive),
                      bloodContainer(bloodbagwiedth, bloodbagheight,
                          CallingName.anegative, snapshot.data!.A_negative),
                      bloodContainer(bloodbagwiedth, bloodbagheight,
                          CallingName.bnegative, snapshot.data!.B_negative),
                      bloodContainer(bloodbagwiedth, bloodbagheight,
                          CallingName.onegative, snapshot.data!.AB_negative),
                      bloodContainer(bloodbagwiedth, bloodbagheight,
                          CallingName.abanegative, snapshot.data!.O_negative),
                    ],
                  ),
                  Text('Screen sized' + MediaQuerypage.screenWidth!.toString()),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuerypage.safeBlockHorizontal!,
                        vertical: MediaQuerypage.safeBlockVertical!),
                    child: Text(
                      CallingName.patientbed,
                      style: TextStyleManager.red22,
                    ),
                  ),

                  //***patient bed detaisl */
                  Wrap(
                    spacing: MediaQuerypage.smallSizeWidth! * 1,
                    children: [
                      Patiendbed(
                        CallingName.icubed,
                        snapshot.data!.icubed,
                        ImageAssets.icu2,
                        insidewidth: MediaQuerypage.screenWidth! * 0.18,
                        insideheight: MediaQuerypage.screenHeight! * 0.22,
                        boxheight: MediaQuerypage.screenHeight! * 0.3,
                        boxwidth: MediaQuerypage.screenWidth! * 0.2,
                      ),
                      Patiendbed(
                        CallingName.cabin,
                        snapshot.data!.cabin,
                        ImageAssets.cabin,
                        insidewidth: MediaQuerypage.screenWidth! * 0.18,
                        insideheight: MediaQuerypage.screenHeight! * 0.22,
                        boxheight: MediaQuerypage.screenHeight! * 0.3,
                        boxwidth: MediaQuerypage.screenWidth! * 0.2,
                      ),
                      Patiendbed(
                        CallingName.room,
                        snapshot.data!.room,
                        ImageAssets.room,
                        insidewidth: MediaQuerypage.screenWidth! * 0.18,
                        insideheight: MediaQuerypage.screenHeight! * 0.22,
                        boxheight: MediaQuerypage.screenHeight! * 0.3,
                        boxwidth: MediaQuerypage.screenWidth! * 0.2,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuerypage.safeBlockHorizontal!,
                        vertical: MediaQuerypage.safeBlockVertical!),
                    child: Text(
                      CallingName.doctor,
                      style: TextStyleManager.red22,
                    ),
                  ),
                  Wrap(
                      spacing: MediaQuerypage.smallSizeWidth! * 1,
                      runSpacing: MediaQuerypage.smallSizeHeight! * 2,
                      children: [
                        doctorview(
                          boxheight: MediaQuerypage.screenHeight! * 0.3,
                          boxwidth: MediaQuerypage.screenWidth! * 0.18,
                          imageheight: MediaQuerypage.screenHeight! * 0.2,
                          imagewidth: MediaQuerypage.screenWidth! * 0.15,
                          imagename: ImageAssets.doctor4,
                        ),
                        doctorview(
                          boxheight: MediaQuerypage.screenHeight! * 0.3,
                          boxwidth: MediaQuerypage.screenWidth! * 0.18,
                          imageheight: MediaQuerypage.screenHeight! * 0.2,
                          imagewidth: MediaQuerypage.screenWidth! * 0.15,
                          imagename: ImageAssets.doctor4,
                        ),
                        doctorview(
                          boxheight: MediaQuerypage.screenHeight! * 0.3,
                          boxwidth: MediaQuerypage.screenWidth! * 0.18,
                          imageheight: MediaQuerypage.screenHeight! * 0.2,
                          imagewidth: MediaQuerypage.screenWidth! * 0.15,
                          imagename: ImageAssets.doctor4,
                        ),
                        doctorview(
                          boxheight: MediaQuerypage.screenHeight! * 0.3,
                          boxwidth: MediaQuerypage.screenWidth! * 0.18,
                          imageheight: MediaQuerypage.screenHeight! * 0.2,
                          imagewidth: MediaQuerypage.screenWidth! * 0.15,
                          imagename: ImageAssets.doctor4,
                        ),
                        doctorview(
                          boxheight: MediaQuerypage.screenHeight! * 0.3,
                          boxwidth: MediaQuerypage.screenWidth! * 0.18,
                          imageheight: MediaQuerypage.screenHeight! * 0.2,
                          imagewidth: MediaQuerypage.screenWidth! * 0.15,
                          imagename: ImageAssets.doctor3,
                        ),
                        doctorview(
                          boxheight: MediaQuerypage.screenHeight! * 0.3,
                          boxwidth: MediaQuerypage.screenWidth! * 0.18,
                          imageheight: MediaQuerypage.screenHeight! * 0.2,
                          imagewidth: MediaQuerypage.screenWidth! * 0.15,
                          imagename: ImageAssets.doctor2,
                        ),
                        doctorview(
                            boxheight: MediaQuerypage.screenHeight! * 0.3,
                            boxwidth: MediaQuerypage.screenWidth! * 0.18,
                            imageheight: MediaQuerypage.screenHeight! * 0.2,
                            imagewidth: MediaQuerypage.screenWidth! * 0.15,
                            imagename: ImageAssets.doctor1),
                      ]),
                ],
              );
            }),
      ),
    );
  }
}
