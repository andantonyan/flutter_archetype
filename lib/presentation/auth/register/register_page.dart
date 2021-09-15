import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../core/core.dart';
import '../login/login.dart';

part 'email_input.dart';

part 'password_input.dart';

part 'register_button.dart';

class RegisterPage extends StatelessWidget {
  static const name = 'Register';

  const RegisterPage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(
      settings: const RouteSettings(name: name),
      builder: (_) => const RegisterPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegisterCubit>(
      create: (_) => getIt(),
      child: _RegisterView(),
    );
  }
}

class _RegisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var l10n = context.l10n;
    var textTheme = context.textTheme;

    return Scaffold(
      body: BlocListener<RegisterCubit, RegisterState>(
        listener: _blocListener,
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    l10n.signUp,
                    style: textTheme.headline6!.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  _EmailInput(),
                  const SizedBox(height: 10),
                  _PasswordInput(),
                  const SizedBox(height: 20),
                  _RegisterButton(),
                  const SizedBox(height: 20),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: l10n.alreadyHaveAnAccount),
                        const TextSpan(text: ' '),
                        TextSpan(
                          text: l10n.signIn,
                          recognizer: TapGestureRecognizer()..onTap = () => _openLoginPage(context),
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

  void _openLoginPage(BuildContext context) {
    context.push(LoginPage.route());
  }

  void _blocListener(BuildContext context, RegisterState state) {
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
