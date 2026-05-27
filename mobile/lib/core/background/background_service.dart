import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:workmanager/workmanager.dart';
import 'package:mobile/core/background/publish_queue_worker.dart';

class BackgroundService {
  Future<void> initialize() async {
    await Workmanager().initialize(
      publishQueueWorkerCallback,
      isInDebugMode: true, // TODO: set to false in production
    );
  }

  Future<void> registerOneOffTask(String uniqueName, String taskName, {Map<String, dynamic>? inputData}) async {
    await Workmanager().registerOneOffTask(
      uniqueName,
      taskName,
      inputData: inputData,
      constraints: Constraints(
        networkType: NetworkType.connected,
      ),
    );
  }
}

final backgroundServiceProvider = Provider<BackgroundService>((ref) {
  return BackgroundService();
});
