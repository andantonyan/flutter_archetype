import 'package:flutter/widgets.dart';
import 'package:flutter_archetype/domain/domain.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

export 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}

extension LocaleDynamicTranslations on AppLocalizations {
  String translateLocale(Locale locale) {
    var translationMap = {
      'hy': armenian,
      'en': english,
    };

    return translationMap[locale.languageCode]!;
  }
}

extension AppExceptionTranslations on AppLocalizations {
  String? translateAppException(Exception? err) {
    if (err == null) return null;

    return err is AppException
        ? err.maybeMap(
            (message) => oopsSomethingWentWrongTryLater,
            authEmailAlreadyInUse: (_) => emailAlreadyInUse,
            authUserNotFound: (_) => invalidEmailOrPassword,
            orElse: () => oopsSomethingWentWrongTryLater,
          )
        : oopsSomethingWentWrongTryLater;
  }
}

extension AppValidationTranslations on AppLocalizations {
  String? translateValidationMessage(Object? err) {
    if (err == null) return null;

    var defaultMessage = oopsSomethingWentWrongTryLater;

    var translationMap = {
      AuthModelValidationError.emptyFirstName: firstNameCannotBeEmpty,
      AuthModelValidationError.invalidFirstName: invalidFirstName,
      AuthModelValidationError.emptyLastName: lastNameCannotBeEmpty,
      AuthModelValidationError.invalidLastName: invalidLastName,
      AuthModelValidationError.emptyEmailAddress: emailAddressCannotBeEmpty,
      AuthModelValidationError.invalidEmailAddress: invalidEmailAddress,
      AuthModelValidationError.emptyPassword: passwordCannotBeEmpty,
      AuthModelValidationError.invalidPassword: invalidPassword,
    };

    return translationMap[err as AuthModelValidationError] ?? defaultMessage;
  }
}
