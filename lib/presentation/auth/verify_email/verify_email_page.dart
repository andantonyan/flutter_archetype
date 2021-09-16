import 'package:flutter/material.dart';
import 'package:flutter_archetype/application/application.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifyEmailPage extends StatelessWidget {
  static const name = 'VerifyEmail';

  const VerifyEmailPage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(
      settings: const RouteSettings(name: name),
      builder: (_) => const VerifyEmailPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _VerifyEmailView();
  }
}

class _VerifyEmailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Verifying email...'),
            const SizedBox(height: 20),
            OutlinedButton(
              child: const Text('Verify email'),
              onPressed: () => context.read<AppLinksCubit>().linkProcessed(),
            ),
          ],
        ),
      ),
    );
  }
}
