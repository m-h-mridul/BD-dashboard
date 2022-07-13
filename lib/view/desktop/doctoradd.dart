import 'package:dashboard_dcall/utils/helper/callingName.dart';
import 'package:dashboard_dcall/utils/helper/media.dart';
import 'package:dashboard_dcall/utils/resourece/ColorManager.dart';
import 'package:dashboard_dcall/utils/resourece/imagepicker.dart';
import 'package:dashboard_dcall/utils/resourece/textstyle.dart';
import 'package:dashboard_dcall/widget/gradietbutton.dart';
import 'package:dashboard_dcall/widget/snakeber.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import '../../contoller/docotoraddcontroller.dart';
import '../../model/doctormodel.dart';

ImageController imageController = ImageController();
TextEditingController namecontoller = TextEditingController();
TextEditingController desigationtextcontoller = TextEditingController();
TextEditingController serialcontacttextContoller = TextEditingController();
TextEditingController duration = TextEditingController();

class DoctorAdd extends StatelessWidget {
  DoctorAdd({Key? key}) : super(key: key);

  DoctorAddController doctorAddController = DoctorAddController();
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuerypage.safeBlockVertical!,
          horizontal: MediaQuerypage.safeBlockHorizontal! * 8,
        ),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              imageget(),
              doctornameget(),
              //**desigation text field */
              doctordesigationget(),
              //**serial details add text feild  */
              doctorcontatcget(),
              //**contact serail text field */
              doctordurationofthishospital(),

              ///** add button  */

              InkWell(
                onTap: () async {
                  Doctormodel dModel = Doctormodel();
                  dModel.name = namecontoller.text.toString();
                  dModel.contact = serialcontacttextContoller.text.toString();
                  dModel.desinagtion = desigationtextcontoller.text.toString();
                  dModel.duration = duration.text.toString();

                  namecontoller.clear();
                  serialcontacttextContoller.clear();
                  desigationtextcontoller.clear();
                  duration.clear();
                  // imageController.imageWidget.;
                  String status=await doctorAddController.doctoradd(
                      d_model: dModel, imagename: imageController);
                  imageController.image.value = CallingName.class_start;
                  namecontoller.clear();
                  serialcontacttextContoller.clear();
                  desigationtextcontoller.clear();
                  duration.clear();
                  Snakeber(message: 'Dotor Add Successfully', details: '');
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuerypage.safeBlockVertical! * 2),
                  child: Container(
                    width: MediaQuerypage.screenWidth! *
                        0.15, // MediaQuerypage.screenWidth! * 0.15,
                    height: MediaQuerypage.screenHeight! *
                        0.07, //MediaQuerypage.screenHeight! * 0.07,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          ColorManager.boldtext,
                          Color.fromARGB(255, 128, 203, 196),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius:
                          BorderRadius.circular(MediaQuerypage.pixel! * 6),
                      boxShadow: const [
                        BoxShadow(
                          color: ColorManager.black12,
                          offset: Offset(5, 5),
                          blurRadius: 10,
                        )
                      ],
                    ),

                    child: Center(
                      child: Text('ADD', style: TextStyleManager.white16),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  TextFormField doctordurationofthishospital() {
    return TextFormField(
      controller: duration,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.words,
      validator: (_) {
        // if (username.text.toString().isEmpty) {
        //   return 'Enter Name';
        // }
        // return null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
          // borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(MediaQuerypage.pixel! * 6),
        ),
        filled: true,
        fillColor: ColorManager.white,
        prefixIcon: const Icon(
          Icons.perm_identity,
          //color: AppColor.red_appcolor,
        ),
        hintText: CallingName.heading_text_doctorcontact_for_serial,
      ),
    );
  }

  Padding doctorcontatcget() {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: MediaQuerypage.safeBlockVertical! * 2),
      child: TextFormField(
        controller: serialcontacttextContoller,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.next,
        textCapitalization: TextCapitalization.words,
        validator: (_) {
          // if (username.text.toString().isEmpty) {
          //   return 'Enter Name';
          // }
          // return null;
        },
        decoration: InputDecoration(
            border: OutlineInputBorder(
              // borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(MediaQuerypage.pixel! * 6),
            ),
            filled: true,
            fillColor: ColorManager.white,
            prefixIcon: const Icon(
              Icons.perm_identity,
              //color: AppColor.red_appcolor,
            ),
            hintText: CallingName.doctoraviable),
      ),
    );
  }

  SizedBox doctordesigationget() {
    return SizedBox(
      height: MediaQuerypage.screenHeight! * 0.2,
      child: TextFormField(
        controller: desigationtextcontoller,
        textInputAction: TextInputAction.next,
        textCapitalization: TextCapitalization.words,
        expands: true,
        keyboardType: TextInputType.multiline,
        maxLines: null,
        validator: (_) {
          // if (username.text.toString().isEmpty) {
          //   return 'Enter Name';
          // }
          // return null;
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(
            // borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(MediaQuerypage.pixel! * 6),
          ),
          filled: true,
          fillColor: ColorManager.white,
          prefixIcon: const Icon(
            Icons.perm_identity,
            //color: AppColor.red_appcolor,
          ),
          hintText: CallingName.heading_text_doctordesignation,
        ),
      ),
    );
  }

  Padding doctornameget() {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: MediaQuerypage.safeBlockVertical! * 2),
      child: TextFormField(
        controller: namecontoller,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.next,
        textCapitalization: TextCapitalization.words,
        validator: (_) {
          // if (username.text.toString().isEmpty) {
          //   return 'Enter Name';
          // }
          // return null;
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(
            // borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(MediaQuerypage.pixel! * 6),
          ),
          filled: true,
          fillColor: ColorManager.white,
          prefixIcon: const Icon(
            Icons.perm_identity,
            //color: AppColor.red_appcolor,
          ),
          hintText: CallingName.doctorname,
        ),
      ),
    );
  }

  InkWell imageget() {
    return InkWell(
      onTap: () {
        imageController.getMultipleImageInfos();
      },
      child: Container(
        width: MediaQuerypage.screenWidth! * 0.2,
        height: MediaQuerypage.screenHeight! * 0.22,
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(CallingName.boxradius),
          // image:imageController.imageWidget
          // DecorationImage(image: imageController.)
        ),
        child: imageController.image.value == CallingName.slected
            ? imageController.imageWidget
            : const Center(child: Text('picture')),
      ),
    );
  }
}
