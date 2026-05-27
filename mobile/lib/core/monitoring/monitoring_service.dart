import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class MonitoringService {
  Future<void> initialize();
  Future<void> recordError(Object error, StackTrace stack, {bool fatal = false});
  Future<void> setUserId(String userId);
  void log(String message);
}

final monitoringServiceProvider = Provider<MonitoringService>((ref) {
  throw UnimplementedError('monitoringServiceProvider not initialized');
});
