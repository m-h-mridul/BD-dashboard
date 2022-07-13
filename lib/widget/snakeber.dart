// ignore_for_file: non_constant_identifier_names

import 'package:dashboard_dcall/utils/helper/media.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

SnackbarController Snakeber({
  String? message,
  String? details,
}) {
  return Get.snackbar(message!, details!,
      icon: const Icon(Icons.done_rounded, color: Colors.white),
      snackPosition: SnackPosition.BOTTOM,
      maxWidth: MediaQuerypage.screenWidth! * 0.03);
}
