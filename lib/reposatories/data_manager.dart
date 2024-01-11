// ignore_for_file: unused_field

import 'package:dio/dio.dart';

import '../data/dataModels/sign_in_model.dart';
import 'mock_api_client.dart';

class NetworkApiClient {
  final Dio dio;

  NetworkApiClient(this.dio);
}

class DataManager {
  final MockApiClient _mockApiClient;
  final NetworkApiClient _networkApiClient;

  DataManager({
    required MockApiClient mockApiClient,
    required NetworkApiClient networkApiClient,
  })  : _mockApiClient = mockApiClient,
        _networkApiClient = networkApiClient;

  Future<SignInModel> signIn(String email, String password) async {
    try {
      final response = await _networkApiClient.dio.post(
        '/signin-endpoint',
        data: {'email': email, 'password': password},
      );
      return SignInModel.fromJson(response.data);
    } catch (e) {
      throw e;
    }
  }

  Future<void> verifyOTP(String email) async {
    try {
      await _networkApiClient.dio
          .post('/forgot-password-endpoint', data: {'email': email});
    } catch (e) {
      throw e;
    }
  }

  Future<void> sendOTP(String email) async {
    try {
      await _networkApiClient.dio
          .post('/send-otp-endpoint', data: {'email': email});
    } catch (e) {
      throw e;
    }
  }

  Future<void> verifyPassword(
      String? email, String? otp, String newPassword) async {
    try {
      await _networkApiClient.dio.post('/verify-password-endpoint', data: {
        'email': email,
        'otp': otp,
        'newPassword': newPassword,
      });
    } catch (e) {
      throw e;
    }
  }
}
