import 'package:task_11/repositories/network_client.dart';

import '../constants/string_resources.dart';
import '../utils/custom_toast.dart';
import 'mock_api_client.dart';

class DataManager {
  final MockApiClient _mockApiClient;

  DataManager({
    required MockApiClient mockApiClient,
  }) : _mockApiClient = mockApiClient;

  Future<bool> signIn(String email, String password) async {
    try {
      final mockApiCallResult = await _mockApiClient.mockApiCall(email);

      final signInUserResult = await NetworkClient().sigInUser(email, password);

      if (mockApiCallResult.isNotEmpty && signInUserResult == true) {
        CustomToast().showCustomToast(StringResources.LOGIN_SUCCESSFUL);

        return true;
      } else {
        CustomToast().showCustomToast(StringResources.WRONG_CREDENTIALS_MSG);

        return false;
      }
    } catch (e) {
      return false;
    }
  }

  Future<void> verifyOTP(String email) async {
    try {
      await _mockApiClient.mockApiCall(email);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> sendOTP(String email) async {
    try {
      await _mockApiClient.mockApiCall(email);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> verifyPassword(String? email, String? otp, String newPassword) async {
    try {} catch (e) {
      rethrow;
    }
  }
}
