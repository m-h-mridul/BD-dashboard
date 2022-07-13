// ignore_for_file: non_constant_identifier_names

import 'package:dashboard_dcall/utils/helper/Sizemanager.dart';
import 'package:dashboard_dcall/utils/helper/callingName.dart';
import 'package:dashboard_dcall/utils/helper/media.dart';
import 'package:dashboard_dcall/utils/resourece/textstyle.dart';
import 'package:dashboard_dcall/stroage/stroage.dart';
import 'package:dashboard_dcall/view/desktop/registation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../contoller/loginCOntroller.dart';
import '../../utils/resourece/ColorManager.dart';
import '../../utils/helper/imagename.dart';
import '../dashboard.dart';

class LoginUI extends StatelessWidget {
  LoginUI({Key? key}) : super(key: key);

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  RxBool obsequirecview = true.obs;

  final fromkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    MediaQuerypage.init(context);
    TextStyle style = TextStyle(
        fontFamily: 'Montserrat', fontSize: MediaQuerypage.fontsize! * 20);
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeManager.horzintal, vertical: SizeManager.verticale),
        child: Form(
          key: fromkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
    
              //**email text field */
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: SizeManager.widgetverticale * 20,
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
                ),
              ),
    
              //**passwood text filed */
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: SizeManager.widgetverticale,
                    horizontal: SizeManager.widgethorzintal * 100),
                child: Obx(
                  () => TextFormField(
                    controller: password,
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
                      hintText: CallingName.heading_text_password,
                      suffixIcon: IconButton(
                        onPressed: () {
                          obsequirecview.value = !obsequirecview.value;
                        },
                        icon: obsequirecview.value
                            ? Icon(
                                Icons.visibility_off,
                              )
                            : Icon(
                                Icons.visibility,
                              ),
                      ),
                    ),
                  ),
                ),
              ),
    
              //***login button */
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: SizeManager.widgetverticale * 15,
                    horizontal: SizeManager.widgethorzintal * 1),
                child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(30.0),
                    color: const Color(0xff01A0C7),
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width * 0.2,
                      padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      onPressed: () async {
                        if (fromkey.currentState!.validate()) {
                          LoginController loginController = LoginController();
                          String status = await loginController.login(
                              email: email.text.toString(),
                              password: password.text.toString());
                          print('Login press');
                          //**if login succeusfully then go dashboard */
                          if (status == CallingName.successfully) {
                            Get.offAll(() =>  DashBoard());
                          }
                        }
                      },
                      child: Text("Login",
                          textAlign: TextAlign.center,
                          style: style.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold)),
                    )),
              ),
    
              //***registation button */
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeManager.widgethorzintal * 1),
                child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color.fromARGB(255, 5, 185, 155),
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width * 0.2,
                      padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      onPressed: () {
                        Get.to(() => Registationui());
                      },
                      child: Text("Ragisteration",
                          textAlign: TextAlign.center,
                          style: style.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold)),
                    )),
              ),
    
              //**forget button */
    
              Text(
                'Forget Password',
                style: TextStyleManager.black18,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
