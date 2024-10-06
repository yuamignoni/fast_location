import 'package:dio/dio.dart';

class DioClient {
  final Dio _dio;

  DioClient()
      : _dio = Dio(
          BaseOptions(
            baseUrl: 'https://viacep.com.br/ws/',
            connectTimeout: 5000,
            receiveTimeout: 3000,
          ),
        );

  Dio get dio => _dio;
}
