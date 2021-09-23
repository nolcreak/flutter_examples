import 'package:dio/dio.dart';

import '../../constants/api_constants.dart';

class APIService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: APIConstants.BASE_URL,
    ),
  );

  Dio get dio => _dio;
}
