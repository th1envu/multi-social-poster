import 'package:mobile/core/errors/failure.dart';

typedef Result<T> = ({T? value, Failure? failure});

extension ResultX<T> on Result<T> {
  bool get isSuccess => value != null && failure == null;
  bool get isFailure => failure != null;
}
