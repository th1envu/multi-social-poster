import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mobile/core/logging/console_logger.dart';
import 'package:mobile/core/logging/remote_logger.dart';

part 'app_logger.g.dart';

abstract class AppLogger {
  void debug(String message, {Object? data});
  void info(String message, {Object? data});
  void warning(String message, {Object? data, StackTrace? stackTrace});
  void error(String message, {required Object error, StackTrace? stackTrace});
}

@Riverpod(keepAlive: true)
AppLogger appLogger(Ref ref) {
  return kReleaseMode ? RemoteLogger() : ConsoleLogger();
}
