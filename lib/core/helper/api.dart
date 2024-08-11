
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rovanna_app/features/home/data/models/product_model.dart';

class Apiservices {
  final Dio dio;
  final baseUrl = "https://rovanna.com/new/api/products/";
  Apiservices(this.dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get('$baseUrl$endPoint');
    return response.data;
  }

  Future<List<Productmodel>> post(
      {required String endPoint, @required dynamic body,@required String? token}) async {
    Response response = await dio.post(
      '$baseUrl$endPoint',
      data: body,
    );
    return response.data;
  }
}
