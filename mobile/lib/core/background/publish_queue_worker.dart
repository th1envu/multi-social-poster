import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:workmanager/workmanager.dart';

@pragma('vm:entry-point')
void publishQueueWorkerCallback() {
  Workmanager().executeTask((taskName, inputData) async {
    final container = ProviderContainer();
    try {
      // final processor = container.read(publishJobProcessorProvider);
      // await processor.processJob(inputData!['jobId'] as String);
      return Future.value(true);
    } catch (e) {
      return Future.value(false); // WorkManager will retry based on policy
    } finally {
      container.dispose();
    }
  });
}
