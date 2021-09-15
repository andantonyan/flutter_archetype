import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../core/core.dart';
import '../register/register.dart';

part 'email_input.dart';
part 'login_button.dart';
part 'password_input.dart';

class LoginPage extends StatelessWidget {
  static const name = 'Login';

  final String? email;
  final bool readOnlyEmail;

  const LoginPage({
    Key? key,
    this.email,
    this.readOnlyEmail = false,
  }) : super(key: key);

  static Route route({
    String? email,
    readOnlyEmail = false,
    bool disableAnimation = false,
  }) {
    return disableAnimation
        ? PageRouteBuilder<void>(
            settings: const RouteSettings(name: name),
            pageBuilder: (_, __, ___) => LoginPage(email: email, readOnlyEmail: readOnlyEmail),
            transitionDuration: const Duration(seconds: 0),
          )
        : MaterialPageRoute<void>(
            settings: const RouteSettings(name: name),
            builder: (_) => LoginPage(email: email, readOnlyEmail: readOnlyEmail),
          );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (_) => getIt()..emailChanged(email),
      child: _LoginView(
        email: email,
        readOnlyEmail: readOnlyEmail,
      ),
    );
  }
}

class _LoginView extends StatelessWidget {
  final String? email;
  final bool readOnlyEmail;

  const _LoginView({
    Key? key,
    this.email,
    this.readOnlyEmail = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var l10n = context.l10n;
    var textTheme = context.textTheme;

    return Scaffold(
      body: BlocListener<LoginCubit, LoginState>(
        listener: _blocListener,
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    l10n.signIn,
                    style: textTheme.headline6!.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  _EmailInput(readOnly: readOnlyEmail, email: email),
                  const SizedBox(height: 10),
                  _PasswordInput(),
                  const SizedBox(height: 20),
                  _LoginButton(),
                  const SizedBox(height: 20),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: l10n.doNotHaveAnAccount),
                        const TextSpan(text: ' '),
                        TextSpan(
                          text: l10n.signUp,
                          recognizer: TapGestureRecognizer()..onTap = () => _openRegisterPage(context),
                          style: const TextStyle(
                            color: kLinkColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _openRegisterPage(BuildContext context) {
    context.push(RegisterPage.route());
  }

  void _blocListener(BuildContext context, LoginState state) {
    var l10n = context.l10n;

    if (state.status.isSubmissionFailure) {
      context
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Text(
              l10n.translateAppException(state.err)!,
              textAlign: TextAlign.center,
            ),
          ),
        );
    }
  }
}
