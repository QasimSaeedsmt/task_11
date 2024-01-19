import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:task_11/constants/constants_resources.dart';
import 'package:task_11/data/dataModels/main_response_model.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ConstantsResources.BASE_URL)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ConstantsResources.SIGNIN_END_POINT)
  Future<MainResponseModel> signInUser(
    @Body() SignInRequest request,
    @Header("api-key") String apiKey,
  );
}

class SignInRequest {
  final String email;
  final String password;

  SignInRequest({required this.email, required this.password});

  Map<String, dynamic> toJson() {
    return {
      "email": email,
      "password": password,
    };
  }
}
