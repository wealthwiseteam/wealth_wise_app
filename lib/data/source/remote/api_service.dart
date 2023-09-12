import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const String baseUrl = "http://127.0.0.1:8000/api";

class EndPoints {
  EndPoints._();

  static const String login = "/login";
  static const String register = "/register";
  static const String logout = "/logout";
}

class Headers {
  Headers._();

  static const String contentType = "content-type";
  static const String applicationJson = "application/json";
  static const String accept = "accept";
}

class ApiService {
  final Dio _dio;

  static Map<String, String> headers = {
    Headers.contentType: Headers.applicationJson,
    Headers.accept: Headers.applicationJson,
  };

  ApiService()
      : _dio = Dio(
          BaseOptions(
            baseUrl: baseUrl,
            headers: headers,
            receiveDataWhenStatusError: true,
            connectTimeout: const Duration(milliseconds: 3600),
            receiveTimeout: const Duration(milliseconds: 3600),
          ),
        ) {
    if (!kReleaseMode) {
      _dio.interceptors.add(
        // Pretty Dio logger is a Dio interceptor that logs network calls in a pretty, easy to read format.
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
        ),
      );
    }
  }

  Future<Response> getData(
      {required String endPoint,
      Map<String, dynamic>? query,
      String? token}) async {
    return await _dio.get(
      endPoint,
      queryParameters: query,
      options: Options(
        headers: {"Authorization": "Bearer $token"},
      ),
    );
  }

  Future<Response> postData({
    required String endPoint,
    required Map<String, dynamic> body,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    return await _dio.post(
      endPoint,
      data: body,
      queryParameters: query,
      options: Options(
        headers: {"Authorization": "Bearer $token"},
      ),
    );
  }
}
