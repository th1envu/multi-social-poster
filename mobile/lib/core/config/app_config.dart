import 'package:flutter/material.dart';

enum Environment { dev, staging, prod }

class AppConfig {
  final Environment environment;
  final String apiBaseUrl;

  const AppConfig({
    required this.environment,
    required this.apiBaseUrl,
  });

  static late AppConfig _instance;

  static AppConfig get instance => _instance;

  static void initialize(AppConfig config) {
    _instance = config;
  }
}
