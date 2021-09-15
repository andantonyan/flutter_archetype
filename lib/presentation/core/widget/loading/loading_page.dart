import 'package:flutter/material.dart';

import 'loading_indicator.dart';

class LoadingPage extends StatelessWidget {
  static const name = 'Loading';

  const LoadingPage({Key? key}) : super(key: key);

  static Route route() {
    return PageRouteBuilder(
      settings: const RouteSettings(name: name),
      pageBuilder: (_, __, ___) => const LoadingPage(),
      transitionDuration: const Duration(seconds: 0),
    );
  }

  @override
  Widget build(final BuildContext context) {
    return const Scaffold(
      body: Center(
        child: LoadingIndicator(),
      ),
    );
  }
}
