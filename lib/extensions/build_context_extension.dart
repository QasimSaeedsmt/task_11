import 'package:flutter/material.dart';

import '../constants/constants_resources.dart';

extension BuildContextX on BuildContext {
  void showSnackbar(String message,
      {Duration? duration, SnackBarAction? action, Color? backgroundColor}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: duration ??
            const Duration(seconds: ConstantsResources.SNACKBAR_DELAY),
        action: action,
        backgroundColor: backgroundColor ?? Colors.redAccent,
      ),
    );
  }
}
