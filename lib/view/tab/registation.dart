// ignore_for_file: must_be_immutable

import 'package:dashboard_dcall/contoller/registationContoller.dart';
import 'package:dashboard_dcall/utils/helper/Sizemanager.dart';
import 'package:dashboard_dcall/utils/helper/media.dart';
import 'package:dashboard_dcall/view/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/route_manager.dart';
import '../../utils/helper/callingName.dart';
import '../../utils/resourece/ColorManager.dart';
import '../../utils/helper/imagename.dart';
import '../../utils/resourece/textstyle.dart';

class Registationui extends StatelessWidget {
  Registationui({Key? key}) : super(key: key);

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController location = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController contact = TextEditingController();

  RxBool obsequirecview = true.obs;
  TextStyle style = TextStyle(
      fontFamily: 'Montserrat', fontSize: MediaQuerypage.fontsize! * 20);

  final fromkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                'Register Your Hospital Details',
                style: TextStyleManager.white18,
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: SizeManager.verticale,
                  horizontal: SizeManager.horzintal,
                ),
                child: Form(
                  key: fromkey,
                  child: Column(
                    children: [
                      //**logo image */
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: SizeManager.widgetverticale * .9,
                            horizontal: SizeManager.widgethorzintal * .8),
                        child: Image.asset(
                          ImageAssets.loginicon,
                          width: SizeManager.smallwidth * 30,
                          height: SizeManager.smallheight * 30,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                            top: SizeManager.smallheight * 2,
                            bottom: SizeManager.smallheight * 2),
                        child: Text(
                          'Welcome Blood donation dashboard',
                          style: TextStyleManager.black18,
                        ),
                      ),

                      //**name text field */
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: SizeManager.widgetverticale * 20,
                          horizontal: SizeManager.widgethorzintal * 100,
                        ),
                        child: TextFormField(
                          controller: name,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          textCapitalization: TextCapitalization.words,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              // borderSide: BorderSide.none,
                              borderRadius: SizeManager.borderRadius,
                            ),
                            filled: true,
                            fillColor: ColorManager.white,
                            prefixIcon: const Icon(
                              Icons.email,
                              //color: AppColor.red_appcolor,
                            ),
                            hintText: CallingName.hostpitalName,
                          ),
                          validator: (_) {
                            if (name.text.toString().isEmpty) {
                              return 'Enter Name';
                            }
                            return null;
                          },
                        ),
                      ),

                      //**email text field */
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: SizeManager.widgethorzintal * 100,
                        ),
                        child: TextFormField(
                          controller: email,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          textCapitalization: TextCapitalization.words,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              // borderSide: BorderSide.none,
                              borderRadius: SizeManager.borderRadius,
                            ),
                            filled: true,
                            fillColor: ColorManager.white,
                            prefixIcon: const Icon(
                              Icons.email,
                              //color: AppColor.red_appcolor,
                            ),
                            hintText: CallingName.heading_text_email,
                          ),
                          validator: (_) {
                            if (email.text.toString().isEmpty) {
                              return 'Enter email';
                            } else if (!email.text
                                .toString()
                                .contains('@gmail.com')) {
                              return 'Please valid email';
                            }
                            return null;
                          },
                        ),
                      ),

                      //***contact */
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: SizeManager.widgetverticale * 20,
                          horizontal: SizeManager.widgethorzintal * 100,
                        ),
                        child: TextFormField(
                          controller: contact,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          textCapitalization: TextCapitalization.words,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              // borderSide: BorderSide.none,
                              borderRadius: SizeManager.borderRadius,
                            ),
                            filled: true,
                            fillColor: ColorManager.white,
                            prefixIcon: const Icon(
                              Icons.email,
                              //color: AppColor.red_appcolor,
                            ),
                            hintText: CallingName.heading_text_hospital_contactdetails,
                          ),
                          validator: (_) {
                            if (contact.text.toString().isEmpty) {
                              return 'Enter Name';
                            }
                            return null;
                          },
                        ),
                      ),

                      //***location text field */
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: SizeManager.widgethorzintal * 100,
                        ),
                        child: TextFormField(
                          controller: location,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          textCapitalization: TextCapitalization.words,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              // borderSide: BorderSide.none,
                              borderRadius: SizeManager.borderRadius,
                            ),
                            filled: true,
                            fillColor: ColorManager.white,
                            prefixIcon: const Icon(
                              Icons.email,
                              //color: AppColor.red_appcolor,
                            ),
                            hintText: CallingName.heading_text_location,
                          ),
                          validator: (_) {
                            if (location.text.toString().isEmpty) {
                              return 'Enter Location';
                            }
                            return null;
                          },
                        ),
                      ),

                      //***password text field */
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: SizeManager.widgetverticale * 20,
                          horizontal: SizeManager.widgethorzintal * 100,
                        ),
                        child: Obx(
                          () => TextFormField(
                            controller: password,
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                            textCapitalization: TextCapitalization.words,
                            obscureText: obsequirecview.value,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                // borderSide: BorderSide.none,
                                borderRadius: SizeManager.borderRadius,
                              ),
                              filled: true,
                              fillColor: ColorManager.white,
                              prefixIcon: const Icon(
                                Icons.lock,
                                //color: AppColor.red_appcolor,
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  obsequirecview.value = !obsequirecview.value;
                                },
                                icon: obsequirecview.value
                                    ? const Icon(
                                        Icons.visibility_off,
                                      )
                                    :const Icon(
                                        Icons.visibility,
                                      ),
                              ),
                              hintText: CallingName.heading_text_password,
                            ),
                            validator: (_) {
                              if (password.text.toString().isEmpty) {
                                return 'Enter password';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      //** */ registation button
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: SizeManager.widgethorzintal * 1),
                        child: Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(30.0),
                            color: const Color(0xff01A0C7),
                            child: MaterialButton(
                              minWidth: MediaQuery.of(context).size.width * 0.2,
                              padding: const EdgeInsets.fromLTRB(
                                  20.0, 15.0, 20.0, 15.0),
                              onPressed: () async {
                                if (fromkey.currentState!.validate()) {
                                  RegistationController registationcontrol =
                                      RegistationController();
                                  String status = await registationcontrol
                                      .registationwith_emailandpassword(
                                    name: name.text.toString(),
                                    email: email.text.toString(),
                                    location: location.text.toString(),
                                    contact: contact.text.toString(),
                                    password: password.text.toString(),
                                  );
                                  if (status == CallingName.successfully) {
                                    Get.offAll(() =>  DashBoard());
                                  }
                                }
                              },
                              child: Text("Registation",
                                  textAlign: TextAlign.center,
                                  style: style.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }
}
