import 'package:dio/dio.dart';

class Apiservices {
  final Dio dio;
  final baseUrl = "https://rovanna.com/new/api/products/";
  Apiservices(this.dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get('$baseUrl$endPoint');
    return response.data;
  }
}
