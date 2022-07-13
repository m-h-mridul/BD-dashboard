import 'package:dashboard_dcall/utils/helper/media.dart';
import 'package:flutter/material.dart';

class SizeManager {
  //**page margin  */
  static final horzintal = MediaQuerypage.safeBlockHorizontal! * 2;
  static final verticale = MediaQuerypage.safeBlockVertical! * 2;

  //**widget space  */
  static final widgethorzintal = MediaQuerypage.safeBlockHorizontal! * 0.2;
  static final widgetverticale = MediaQuerypage.safeBlockVertical! * .2;

  //**spaceing  */
  static final wrapspacing = MediaQuerypage.smallSizeWidth! * 2;

  //**for dialog box input get  */
  static final double dialogboxwidth = MediaQuerypage.screenWidth! * 0.3;
  static final double dialogboxheight = MediaQuerypage.screenHeight! * 0.4;

//***blood box size */
  static final double bloodbagwiedth = MediaQuerypage.screenWidth! * 0.15;
  static final double bloodbagheight = MediaQuerypage.screenHeight! * 0.2;

  //**for make round border */
  static final BorderRadius borderRadius =
      BorderRadius.circular(MediaQuerypage.pixel! * 6);
     static final Radius circularradius = Radius.circular(MediaQuerypage.pixel! * 6);

  //**width   and height*/
  static final width = MediaQuerypage.screenWidth!;
  static final height = MediaQuerypage.screenHeight!;

  //**small   width   and height*/
  static final smallwidth = MediaQuerypage.smallSizeWidth!;
  static final smallheight = MediaQuerypage.smallSizeHeight!;
}
