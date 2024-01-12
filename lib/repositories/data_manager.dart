import 'mock_api_client.dart';

class DataManager {
  final MockApiClient _mockApiClient;

  DataManager({
    required MockApiClient mockApiClient,
  }) : _mockApiClient = mockApiClient;

  Future<bool> signIn(String email, String password) async {
    try {
      await _mockApiClient.mockApiCall(email);

      return true;
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

  Future<void> verifyPassword(
      String? email, String? otp, String newPassword) async {
    try {} catch (e) {
      rethrow;
    }
  }
}
