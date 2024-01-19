import 'package:dio/dio.dart';
import 'package:task_11/constants/constants_resources.dart';

import '../services/apiService/api_service.dart';

class NetworkClient {
  Future<bool> sigInUser(String email, String password) async {
    try {
      final dio = Dio();
      final apiService = ApiService(dio);

      var response = await apiService.signInUser(
        SignInRequest(
          email: email,
          password: password,
        ),
        ConstantsResources.API_KEY,
      );
      if (response.response.data != null) {
        return true;
      }

      return false;
    } catch (e) {
      return false;
    }
  }
}
