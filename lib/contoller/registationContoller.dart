// ignore_for_file: nullable_type_in_catch_clause, non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../utils/helper/callingName.dart';
import '../model/userinformation.dart';
import '../stroage/stroage.dart';

class RegistationController {
  registationwith_emailandpassword(
      {String? name,
      String? email,
      String? location,
      String? contact,
      String? password}) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email!, password: password!);

      //**stargae assign value  */
      HiveBoxstraoage offlinedatabase = HiveBoxstraoage();
      offlinedatabase.savevalue(
          key: CallingName.heading_text_user_id,
          value: userCredential.user!.uid);

      //***insert user information into firebase   */
      UserInformation.userID = userCredential.user!.uid;
      print(UserInformation.userID);
      await FirebaseFirestore.instance
          .collection(CallingName.online_databsename)
          .doc(UserInformation.userID)
          .set({
        ///**
        //hospital details */
        /// */
        CallingName.heading_text_user_id: UserInformation.userID,
        CallingName.heading_text_name: name,
        CallingName.heading_text_email: email,
        CallingName.heading_text_location: location,
        CallingName.heading_text_hospital_contactdetails: contact,
        //
        //**bed details */
        //
        CallingName.icubed: CallingName.zero,
        CallingName.room: CallingName.zero,
        CallingName.cabin: CallingName.zero,

        ///
        ///blood information
        ///
        CallingName.opositive: CallingName.zero,
        CallingName.apositive: CallingName.zero,
        CallingName.bpositive: CallingName.zero,
        CallingName.abpositive: CallingName.zero,
        CallingName.onegative: CallingName.zero,
        CallingName.anegative: CallingName.zero,
        CallingName.bnegative: CallingName.zero,
        CallingName.abanegative: CallingName.zero,
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
