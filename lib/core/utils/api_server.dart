import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  final String _baseUrl = 'https://furniture-api.fly.dev/v1/';

  ApiService({required this.dio});
  Future<Map<String, dynamic>> getFeaturedApi({
    required String endPoints,
  }) async {
    var response = await dio.get('$_baseUrl$endPoints');
    return response.data;
  }
}
