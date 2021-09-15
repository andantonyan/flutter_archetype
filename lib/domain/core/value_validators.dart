import 'package:dartz/dartz.dart';

import 'value_objects.dart';

// ignore: provide_deprecation_message
@deprecated
Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(EmptyValueFailure(input));
  }
}