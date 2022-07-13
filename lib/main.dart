import 'package:dashboard_dcall/utils/helper/callingName.dart';
import 'package:dashboard_dcall/home.dart';
import 'package:dashboard_dcall/stroage/stroage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //**offline datebase cheak  */
  await Hive.openBox(CallingName.offline_databsename);
  HiveBoxstraoage hivestroage = HiveBoxstraoage();
  //**cheak user accout creat or not  */
  hivestroage.logincheak(key: CallingName.heading_text_user_id);

  //**intaiixe firbase in this project */
  await Firebase.initializeApp(
      // For Firebase JS SDK v7.20.0 and later, measurementId is optional
      options: const FirebaseOptions(
          apiKey: "AIzaSyBKffCt8iehyJwoMZNso6NSEX8Bl6Ie470",
          appId: "1:351420364959:web:b422fd8eae06f546700aaa",
          authDomain: "collageblooddonation.firebaseapp.com",
          messagingSenderId: "351420364959",
          storageBucket: "collageblooddonation.appspot.com",
          projectId: "collageblooddonation"));
  runApp(MyApp());
}
