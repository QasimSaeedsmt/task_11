import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:task_11/data/dataModels/sign_in_model.dart';

import '../constants/string_resources.dart';
import '../utils/custom_toast.dart';

class MockApiClient {
  MockApiClient();

  static const _jsonDir = 'assets/json/';
  static const _jsonExtension = '.json';

  Future<SignInModel> mockApiCall(String fileName) async {
    try {
      final resourcePath = '$_jsonDir$fileName$_jsonExtension';
      String data = await rootBundle.loadString(resourcePath);
      final jsonResult = json.decode(data);
      CustomToast().showCustomToast(StringResources.LOGIN_SUCCESSFUL);

      return SignInModel.fromJson(jsonResult);
    } catch (e) {
      CustomToast().showCustomToast(StringResources.WRONG_EMAIL_MSG);

      if (kDebugMode) {
        print('Error loading JSON file: $e\nda de\n$fileName');
      }
      throw Exception('Failed to load JSON file: $fileName');
    }
  }
}
