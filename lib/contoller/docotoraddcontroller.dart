// ignore_for_file: non_constant_identifier_names


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dashboard_dcall/contoller/DashboardCOntroller.dart';
import 'package:dashboard_dcall/model/doctormodel.dart';
import 'package:dashboard_dcall/utils/resourece/imagepicker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../utils/helper/callingName.dart';

class DoctorAddController extends GetxController {
  var controller = Get.find<DashboardController>();
  FirebaseStorage storage = FirebaseStorage.instance;

  Future<String> doctoradd(
      {Doctormodel? d_model, ImageController? imagename}) async {
    try {
      await storage
          .refFromURL('gs://collageblooddonation.appspot.com')
          .child('Doctor Image/' +
              controller.hospitaldata.value.hispitalName! +
              '/' +
              d_model!.name)
          .putData(imagename!.fileBytes)
          .then((p0) => print('Upload succesfully'));
      String downloadUrl =  await storage
          .refFromURL('gs://collageblooddonation.appspot.com')
          .child('Doctor Image/' +
              controller.hospitaldata.value.hispitalName! +
              '/' +
              d_model.name)
          .getDownloadURL();
      await FirebaseFirestore.instance
          .collection(CallingName.doctors_databsename)
          .doc(d_model.name)
          .set({
        CallingName.hostpitalName: controller.hospitaldata.value.hispitalName,
        CallingName.heading_text_name: d_model.name,
        CallingName.heading_text_doctordesignation: d_model.desinagtion,
        CallingName.doctoraviable: d_model.duration,
        CallingName.heading_text_doctorcontact_for_serial: d_model.contact,
        CallingName.image_download_url: downloadUrl,
      });
      return CallingName.successfully;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
      return CallingName.firbaseerros;
    } catch (e) {
      print(e);
      return CallingName.catcherrors;
    }
  }
}
