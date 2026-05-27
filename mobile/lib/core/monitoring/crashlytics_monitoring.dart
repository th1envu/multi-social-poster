import 'package:mobile/core/monitoring/monitoring_service.dart';

class CrashlyticsMonitoring implements MonitoringService {
  @override
  Future<void> initialize() async {
    // Initialize Firebase Crashlytics
  }

  @override
  Future<void> recordError(Object error, StackTrace stack, {bool fatal = false}) async {
    // Record error to Crashlytics
  }

  @override
  Future<void> setUserId(String userId) async {
    // Set user ID for Crashlytics
  }

  @override
  void log(String message) {
    // Log message to Crashlytics
  }
}
