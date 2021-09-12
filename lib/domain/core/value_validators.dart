import 'package:dartz/dartz.dart';

import 'value_objects.dart';


@deprecated
Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(EmptyValueFailure(input));
  }
}