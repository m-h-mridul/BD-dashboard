// ignore_for_file: unused_local_variable

import 'package:dashboard_dcall/utils/helper/callingName.dart';
import 'package:dashboard_dcall/model/userinformation.dart';
import 'package:dashboard_dcall/stroage/stroage.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginController {
  //**user login method*/
  login({String? email, String? password}) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email!, password: password!);
      UserInformation.userID = userCredential.user!.uid;

      //**stargae assign value  */
      HiveBoxstraoage offlinedatabase = HiveBoxstraoage();
      offlinedatabase.savevalue(
          key: CallingName.heading_text_user_id, value: userCredential.user!.uid);

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
