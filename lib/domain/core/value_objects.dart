import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@deprecated
@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  T getOrCrash() {
    // ignore: unnecessary_cast
    return value.fold(((f) => throw Exception(f)) as T Function(ValueFailure<T>), id);
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) => identical(this, other) || other is ValueObject && runtimeType == other.runtimeType;

  @override
  int get hashCode => 0;

  @override
  String toString() {
    return 'ValueObject(value: $value)';
  }
}

@deprecated
abstract class ValueFailure<T> {}

@deprecated
class EmptyValueFailure<T> implements ValueFailure<T> {
  final T failedValue;

  const EmptyValueFailure(this.failedValue);
}
