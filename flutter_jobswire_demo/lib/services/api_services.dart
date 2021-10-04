import 'dart:io';

import 'package:dio/dio.dart';

import '../constants/api_constants.dart';
import '../models/job_model.dart';

class ApiService {
  final Dio _dioInstance = Dio(
    BaseOptions(
      baseUrl: ApiConstants.baseUrl,
    ),
  );

  Future<List<JobModel>> getJobs() async {
    final result = await _dioInstance.get(ApiConstants.jobs);

    try {
      if (result.statusCode == HttpStatus.ok) {
        final jobs = result.data as List;

        return jobs.skip(1).map((job) => JobModel.fromJson(job)).toList();
      }
      return [];
    } catch (e) {
      throw e.toString();
    }
  }
}
