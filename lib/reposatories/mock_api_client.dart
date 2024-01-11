import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:task_11/data/dataModels/sign_in_model.dart';

class MockApiClient {
  MockApiClient();

  static const _jsonDir = 'assets/json/';
  static const _jsonExtension = '.json';

  Future<SignInModel> mockApiCall(String file) async {
    final resourcePath = _jsonDir + file + _jsonExtension;

    String data = await rootBundle.loadString(resourcePath);
    final jsonResult = json.decode(data);
    /**
     * For throwing exception uncomment below code.
     */
    // throw DioError(
    //   requestOptions: RequestOptions(path: ""),
    //   response: Response(
    //     requestOptions: RequestOptions(path: ""),
    //     statusCode: 406,
    //     data: {
    //       "response": {"status": false, "message": "Email Or password Wrong"}
    //     },
    //   ),
    // );
    return SignInModel.fromJson(jsonResult);
  }

  Future<dynamic> mockApiCallEmptyResponse() async {
    /**
     * For throwing exception uncomment below code.
     */
    // throw DioError(
    //   requestOptions: RequestOptions(path: ""),
    //   response: Response(
    //     requestOptions: RequestOptions(path: ""),
    //     statusCode: 401,
    //     data: {
    //       "response": {"status": false, "message": "Email Or password Wrong"}
    //     },
    //   ),
    // );
    return "";
  }
}
