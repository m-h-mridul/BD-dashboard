// ignore_for_file: non_constant_identifier_names, file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import '../utils/helper/callingName.dart';
import '../model/hospitaldetails.dart';
import '../model/userinformation.dart';

class DashboardController extends GetxController {
  Rx<Hospitaldetails> hospitaldata = Rx<Hospitaldetails>(Hospitaldetails());
  static DashboardController tofind = Get.find<DashboardController>();
  RxBool dataloading=true.obs;

  @override
  void onInit() {
    getabout();
    super.onInit();
  }

  CollectionReference users =
      FirebaseFirestore.instance.collection(CallingName.online_databsename);
  Stream<Hospitaldetails> getabout() {
    return users.snapshots().asyncMap((even) {
      Hospitaldetails aboutmodel = Hospitaldetails();
      for (var event in even.docs) {
        if (event.get(CallingName.heading_text_user_id) ==
            UserInformation.userID) {
          //**about */
          aboutmodel.hispitalName =
              event.get(CallingName.heading_text_name) ?? CallingName.notfind;

          aboutmodel.location = event.get(CallingName.heading_text_location) ??
              CallingName.notfind;
          aboutmodel.email =
              event.get(CallingName.heading_text_email) ?? CallingName.notfind;
          aboutmodel.contact =
              event.get(CallingName.heading_text_hospital_contactdetails) ??
                  CallingName.notfind;
          //
          //**bed details */

          aboutmodel.icubed = event.get(CallingName.icubed) ?? CallingName.zero;
          aboutmodel.room = event.get(CallingName.room) ?? CallingName.zero;
          aboutmodel.cabin = event.get(CallingName.cabin) ?? CallingName.zero;

          //**blood info */
          //
          aboutmodel.A_positive =
              event.get(CallingName.apositive) ?? CallingName.zero;
          aboutmodel.B_positive =
              event.get(CallingName.bpositive) ?? CallingName.zero;
          aboutmodel.AB_positive =
              event.get(CallingName.abpositive) ?? CallingName.zero;
          aboutmodel.O_positive =
              event.get(CallingName.opositive) ?? CallingName.zero;
          aboutmodel.A_negative =
              event.get(CallingName.anegative) ?? CallingName.zero;
          aboutmodel.B_negative =
              event.get(CallingName.bnegative) ?? CallingName.zero;
          aboutmodel.AB_negative =
              event.get(CallingName.abanegative) ?? CallingName.zero;
          aboutmodel.O_negative =
              event.get(CallingName.onegative) ?? CallingName.zero;
          break;
        }
      }
      dataloading.value=false;
      hospitaldata.value = aboutmodel;
      return aboutmodel;
    });
  }

  Future<void> savedataindatabase({String? value, String? key}) {
    ///** */ Call the user's CollectionReference to add a new user

    return users
        .doc(UserInformation.userID)
        .update({
          key!: value!,
        })
        .then((value) => print("User Added"))
        //**make some alert dialog for this shown erorrs */
        .catchError((error) => print("Failed to add user: $error"));
  }
}
