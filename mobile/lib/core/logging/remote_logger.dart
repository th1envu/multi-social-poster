import 'package:mobile/core/logging/app_logger.dart';

class RemoteLogger implements AppLogger {
  @override
  void debug(String message, {Object? data}) {
    // In production, debug logs can be ignored or sent to a remote service if needed
  }

  @override
  void info(String message, {Object? data}) {
    // Send to remote analytics/logging service
  }

  @override
  void warning(String message, {Object? data, StackTrace? stackTrace}) {
    // Send to remote analytics/logging service
  }

  @override
  void error(String message, {required Object error, StackTrace? stackTrace}) {
    // Send to crashlytics/monitoring service
  }
}
