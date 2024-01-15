import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:task_11/constants/color_resources.dart';
import 'package:task_11/constants/dimension_resources.dart';
import 'package:task_11/constants/string_resources.dart';

class CustomToast {
  void showUnderDevelopmentToast() {
    Fluttertoast.showToast(
        msg: StringResources.TOAST_MSG,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        backgroundColor: ColorResources.BACKGROUND_COLOR,
        textColor: Colors.white,
        fontSize: DimensionResources.D_16);
  }
}
