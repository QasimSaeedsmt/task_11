import 'dart:convert';

import 'package:flutter/services.dart';

import '../constants/string_resources.dart';
import '../utils/custom_toast.dart';

class MockApiClient {
  MockApiClient();

  static const _jsonDir = 'assets/json/';
  static const _jsonExtension = '.json';

  Future<Map<String, dynamic>> mockApiCall(String fileName) async {
    try {
      final resourcePath = '$_jsonDir$fileName$_jsonExtension';
      final data = await rootBundle.loadString(resourcePath);
      if (data.isEmpty) {
        throw Exception(StringResources.EMPTY_JSON_FILE_ERROR + fileName);
      }
      return json.decode(data);
    } catch (e) {
      CustomToast().showCustomToast(StringResources.WRONG_CREDENTIALS_MSG);

      rethrow;
    }
  }
}
