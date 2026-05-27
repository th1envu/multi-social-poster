import 'package:flutter_riverpod/flutter_riverpod.dart';

class MediaProcessor {
  Future<void> process(List<String> assets, List<String> targetPlatforms) async {
    // 1. EXIF strip
    // 2. Compress/Resize/Crop
    // 3. Transcode video
    // 4. Validate per platform
  }
}

final mediaProcessorProvider = Provider<MediaProcessor>((ref) {
  return MediaProcessor();
});
