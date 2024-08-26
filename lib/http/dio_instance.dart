import 'package:dio/dio.dart';

class DioInstance {
  static final DioInstance _instance = DioInstance._internal();

  factory DioInstance() {
    return _instance;
  }

  DioInstance._internal() {
    _dio.options.baseUrl = "https://pokeapi.co/api/v2/";

    _dio.options.connectTimeout = const Duration(seconds: 15);
    _dio.options.receiveTimeout = const Duration(seconds: 15);
  }

  final Dio _dio = Dio();

  Dio get dio => _dio;
}
