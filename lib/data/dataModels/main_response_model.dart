import 'package:task_11/data/dataModels/response_model.dart';

class MainResponseModel {
  Response response;

  MainResponseModel({required this.response});

  factory MainResponseModel.fromJson(Map<String, dynamic> json) {
    return MainResponseModel(
      response: Response.fromJson(json['response']),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['response'] = response.toJson();
    return data;
  }
}
