import 'package:dartz/dartz.dart';

import 'failure.dart';

typedef EitherFailureOr<T> = Future<Either<Failure, T>>;

// ignore_for_file: always_use_package_imports

extension DartzExtension<R> on Either<Failure, R> {
  Failure asLeft() => (this as Left).value;
  R asRight() => (this as Right).value;
}
