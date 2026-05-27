abstract class AnalyticsService {
  Future<void> initialize();
  Future<void> logEvent(String name, {Map<String, Object>? parameters});
  Future<void> setUserId(String userId);
}
