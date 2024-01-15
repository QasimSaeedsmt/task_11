import 'package:fluttertoast/fluttertoast.dart';
import 'package:task_11/constants/color_resources.dart';
import 'package:task_11/constants/dimension_resources.dart';

class CustomToast {
  void showCustomToast(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        backgroundColor: ColorResources.BACKGROUND_COLOR,
        textColor: ColorResources.WHITE_COLOR,
        fontSize: DimensionResources.D_16);
  }
}
