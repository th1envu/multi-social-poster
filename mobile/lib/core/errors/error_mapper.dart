import 'package:dio/dio.dart';
import 'package:mobile/core/errors/failure.dart';

class ErrorMapper {
  static Failure mapError(Object error, [StackTrace? stackTrace]) {
    if (error is Failure) {
      return error;
    }
    
    if (error is DioException) {
      return _mapDioException(error);
    }
    
    // Add IsarError mappings here when needed
    
    return UnknownFailure(
      message: error.toString(),
      cause: error,
    );
  }

  static Failure _mapDioException(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.connectionError:
        return NetworkFailure(
          message: 'Network connection failed. Please check your internet.',
          cause: error,
        );
      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode;
        if (statusCode == 401 || statusCode == 403) {
          return AuthFailure(
            message: 'Authentication failed. Please log in again.',
            cause: error,
            isExpiredToken: statusCode == 401,
          );
        }
        return NetworkFailure(
          message: 'Server returned an error: $statusCode',
          cause: error,
        );
      default:
        return NetworkFailure(
          message: 'An unexpected network error occurred.',
          cause: error,
        );
    }
  }
}
