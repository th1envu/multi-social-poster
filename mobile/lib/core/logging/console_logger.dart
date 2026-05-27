import 'package:logger/logger.dart';
import 'package:mobile/core/logging/app_logger.dart';

class ConsoleLogger implements AppLogger {
  final Logger _logger;

  ConsoleLogger() : _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 8,
      lineLength: 120,
      colors: true,
      printEmojis: true,
    ),
  );

  @override
  void debug(String message, {Object? data}) {
    _logger.d(message, error: data);
  }

  @override
  void info(String message, {Object? data}) {
    _logger.i(message, error: data);
  }

  @override
  void warning(String message, {Object? data, StackTrace? stackTrace}) {
    _logger.w(message, error: data, stackTrace: stackTrace);
  }

  @override
  void error(String message, {required Object error, StackTrace? stackTrace}) {
    _logger.e(message, error: error, stackTrace: stackTrace);
  }
}
