import 'package:formz/formz.dart';

enum AuthModelValidationError {
  emptyFirstName,
  invalidFirstName,
  emptyLastName,
  invalidLastName,
  emptyEmailAddress,
  invalidEmailAddress,
  emptyPassword,
  invalidPassword,
  emptyBirthday,
  invalidBirthday,
}

class EmailAddress extends FormzInput<String, AuthModelValidationError> {
  const EmailAddress.pure() : super.pure('');

  const EmailAddress.dirty([String value = '']) : super.dirty(value);

  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  @override
  AuthModelValidationError? validator(String? value) {
    AuthModelValidationError? error;

    if (value == null || value.isEmpty) {
      error = AuthModelValidationError.emptyEmailAddress;
    } else if (!_emailRegExp.hasMatch(value)) {
      error = AuthModelValidationError.invalidEmailAddress;
    }
    return error;
  }
}

class Password extends FormzInput<String, AuthModelValidationError> {
  const Password.pure() : super.pure('');

  const Password.dirty([String value = '']) : super.dirty(value);

  static final _passwordRegExp = RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d].{7,}$');

  @override
  AuthModelValidationError? validator(String? value) {
    AuthModelValidationError? error;

    if (value == null || value.isEmpty) {
      error = AuthModelValidationError.emptyPassword;
    } else if (!_passwordRegExp.hasMatch(value)) {
      error = AuthModelValidationError.invalidPassword;
    }
    return error;
  }
}

class FirstName extends FormzInput<String, AuthModelValidationError> {
  const FirstName.pure() : super.pure('');

  const FirstName.dirty([String value = '']) : super.dirty(value);

  static final RegExp _firstNameRegExp = RegExp(r"^[a-z ,.'-]+$", caseSensitive: false);

  @override
  AuthModelValidationError? validator(String? value) {
    AuthModelValidationError? error;

    if (value == null || value.isEmpty) {
      error = AuthModelValidationError.emptyFirstName;
    } else if (!_firstNameRegExp.hasMatch(value)) {
      error = AuthModelValidationError.invalidFirstName;
    }
    return error;
  }
}

class LastName extends FormzInput<String, AuthModelValidationError> {
  const LastName.pure() : super.pure('');

  const LastName.dirty([String value = '']) : super.dirty(value);

  static final RegExp _lastNameRegExp = RegExp(r"^[a-z ,.'-]+$", caseSensitive: false);

  @override
  AuthModelValidationError? validator(String? value) {
    AuthModelValidationError? error;

    if (value == null || value.isEmpty) {
      error = AuthModelValidationError.emptyLastName;
    } else if (!_lastNameRegExp.hasMatch(value)) {
      error = AuthModelValidationError.invalidLastName;
    }
    return error;
  }
}
