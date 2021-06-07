import 'dart:io';
import 'package:dio/dio.dart';
import '../constants/api_constants/api_base_constants.dart';

class ApiService {
  final dio = Dio(
    BaseOptions(
        baseUrl: ApiBaseConstants.BASE_URL,
        queryParameters: ApiBaseConstants.queryParameters),
  );

  Future getData(String path, Map<String, String> queryParameters) async {
    final result = await dio.get(path, queryParameters: queryParameters);
    try {
      if (result.statusCode == HttpStatus.ok) {
        return result.data;
      } else {
        return result.statusMessage;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
