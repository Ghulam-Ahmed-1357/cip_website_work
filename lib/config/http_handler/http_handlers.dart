import 'dart:convert';
import 'package:cip_website/config/http_handler/internet_services.dart';
import 'package:cip_website/config/http_handler/helper_function.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:crypto/crypto.dart';



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
  bool isNetConnected = await connectionStatusSingleton.checkConnection();

  if (isNetConnected) {
    try {
      Map<String, dynamic> headers = {};
      // Define the payload (should match the body of your request)
      dynamic payload;
      if (data != null) {
        payload = jsonEncode(data);
      } else {
        payload = '';
      }
      // Generate the current timestamp in seconds
      int timestamp = DateTime.now().millisecondsSinceEpoch ~/ 1000;

      // Generate the HMAC-SHA256 signature using CryptoJS
      var key = utf8.encode(secretKey);
      var message = utf8.encode('$payload.$timestamp');
      // log('$payload.$timestamp');
      Hmac hmac = Hmac(sha256, key); // HMAC-SHA256
      Digest signature = hmac.convert(message);

      // Set the headers dynamically
      headers.addAll({'X-SIGNATURE': signature});
      headers.addAll({'X-TIMESTAMP': timestamp.toString()});
      headers.addAll({'X-SECRET-KEY': secretKey});
      if (token != null) {
        headers.addAll({'Authorization': "Bearer $token"});
      }

      headers.addAll({"Accept": "application/json"});
      FormData? formData;
      if (data != null) {
        formData = FormData.fromMap(data);
      } else {
        formData = null;
      }
      var method = RequestMethodModel(
        method: "post",
        url: url,
        headers: headers,
      );
      pendingRequest.add(method);
      var resp = await Dio().post(
        url,
        data: formData,
        options: Options(headers: headers),
      );
      pendingRequest.remove(method);
      return resp;
    } on DioException catch (err) {
      if (err.response?.statusCode == 401) {
        showErrorToast("Unauthenticated");
        // navigationService.pushNamedAndRemoveUntil(GlobalAppRouteName.login);
      } else if (err.response?.statusCode == 422) {
        if (err.response?.data['message'] != null) {
          showErrorToast(err.response?.data['message']);
        } else {
          showErrorToast("something went wrong");
        }
      } else if (err.response?.statusCode == 400) {
        showErrorToast(err.response?.data['message']);
      } else {
        showErrorToast("something went wrong");
      }
      return err.response;
    }
  } else {
    showNetworkErrorToast("No internet connected");
    return null;
  }
}
