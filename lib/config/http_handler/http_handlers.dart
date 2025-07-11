import 'package:cip_website/config/http_handler/internet_services.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

String secretKey = dotenv.env["SECRET_KEY"]!;
ConnectionStatusSingleton connectionStatusSingleton =
    ConnectionStatusSingleton.getInstance();

class RequestMethodModel {
  final String method;
  final String url;
  final Map<String, dynamic> headers;
  final Map<dynamic, dynamic>? data;

  RequestMethodModel({
    required this.method,
    required this.url,
    required this.headers,
    this.data,
  });
}

List<RequestMethodModel> pendingRequest = [];

Future<Response?> postRequesthandler({
  required String url,
  String? token,
  Map<String, dynamic>? data,
}) async {
  try {
    Map<String, dynamic> headers = {
      'Accept': 'application/json',
    };

    if (token != null) {
      headers['Authorization'] = "Bearer $token";
    }

    FormData? formData = data != null ? FormData.fromMap(data) : null;

    var response = await Dio().post(
      url,
      data: formData,
      options: Options(headers: headers),
    );

    return response;
  } on DioException catch (err) {
    if (err.response?.statusCode == 401) {
      print("Unauthenticated");
    } else if (err.response?.statusCode == 422) {
      print(err.response?.data['message'] ?? "Validation error");
    } else if (err.response?.statusCode == 400) {
      print(err.response?.data['message'] ?? "Bad request");
    } else {
      print("Something went wrong: ${err.message}");
    }
    return err.response;
  }
}

