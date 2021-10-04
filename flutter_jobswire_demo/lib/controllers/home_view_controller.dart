import 'package:flutter/material.dart';

import '../models/job_model.dart';
import '../services/api_services.dart';
import '../utils/debouncer.dart';

class HomeViewController with ChangeNotifier {
  final _debouncer = Debouncer(milliseconds: 1000);

  final List<JobModel> _jobs = [];
  final List<JobModel> _filteredJobs = [];
  List<JobModel> get jobs => _filteredJobs.isNotEmpty ? _filteredJobs : _jobs;

  HomeViewController() {
    init();
  }

  void onTextChange(String text) {
    _filteredJobs.clear();

    _debouncer.run(
      () {
        final filteredText = text.toLowerCase();

        _filteredJobs.addAll(
          _jobs.where((job) =>
              job.company!.toLowerCase().contains(filteredText) ||
              job.description!.toLowerCase().contains(filteredText) ||
              job.location!.toLowerCase().contains(filteredText)),
        );
        notifyListeners();
      },
    );
  }

  void init() async {
    _jobs.addAll(await ApiService().getJobs());

    notifyListeners();
  }
}
