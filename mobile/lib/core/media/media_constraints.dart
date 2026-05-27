class AspectRatio {
  final int width;
  final int height;

  const AspectRatio(this.width, this.height);
  
  double get value => width / height;
}

class Size {
  final int width;
  final int height;

  const Size(this.width, this.height);
}

abstract class PlatformMediaConstraints {
  int get maxFileSizeBytes;
  List<AspectRatio> get allowedAspectRatios;
  Size get maxDimensions;
  Duration? get maxVideoDuration;
}
