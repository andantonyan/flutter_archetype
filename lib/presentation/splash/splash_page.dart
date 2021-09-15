import 'package:flutter/material.dart';

import '../core/core.dart';

class SplashPage extends StatelessWidget {
  static const name = 'Splash';

  const SplashPage({Key? key}) : super(key: key);

  static Route route() {
    return PageRouteBuilder<void>(
      settings: const RouteSettings(name: name),
      pageBuilder: (_, __, ___) => const SplashPage(),
      transitionDuration: const Duration(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: LoadingIndicator(),
      ),
    );
  }
}
