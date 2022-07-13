// ignore_for_file: unnecessary_null_comparison, prefer_typing_uninitialized_variables

import 'package:dashboard_dcall/utils/helper/callingName.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'package:flutter/material.dart';


class ImageController {
  RxString image = CallingName.class_start.obs;
  XFile? cloudFile;
  late var fileBytes;
  late Image imageWidget;

  Future<void> getMultipleImageInfos() async {
    MediaInfo? mediaData = await ImagePickerWeb.getImageInfo;
    //  String? mimeType = mime(Path.basename(mediaData!.fileName!));
    // html.File mediaFile =
    //     html.File(mediaData.data!, mediaData.fileName!, {'type': mimeType});

    if (mediaData != null) {
      image.value = CallingName.slected;
      cloudFile = XFile.fromData(mediaData.data!);
      fileBytes = mediaData.data;
      imageWidget = Image.memory(mediaData.data!);
    } else {
      image.value = CallingName.not_slected;
    }
  }
}
