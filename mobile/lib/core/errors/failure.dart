import 'package:equatable/equatable.dart';

sealed class Failure extends Equatable {
  final String message;
  final Object? cause;

  const Failure({required this.message, this.cause});

  @override
  List<Object?> get props => [message, cause];
}

class NetworkFailure extends Failure {
  const NetworkFailure({required super.message, super.cause});
}

class AuthFailure extends Failure {
  final bool isExpiredToken;

  const AuthFailure({
    required super.message,
    super.cause,
    this.isExpiredToken = false,
  });

  @override
  List<Object?> get props => super.props..add(isExpiredToken);
}

class PublishFailure extends Failure {
  final String platformId;
  final bool isRetryable;

  const PublishFailure({
    required super.message,
    required this.platformId,
    this.isRetryable = false,
    super.cause,
  });

  @override
  List<Object?> get props => super.props..addAll([platformId, isRetryable]);
}

class MediaFailure extends Failure {
  const MediaFailure({required super.message, super.cause});
}

class StorageFailure extends Failure {
  const StorageFailure({required super.message, super.cause});
}

class UnknownFailure extends Failure {
  const UnknownFailure({required super.message, super.cause});
}
