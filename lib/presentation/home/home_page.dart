import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/core.dart';

class HomePage extends StatelessWidget {
  static const name = 'Home';

  const HomePage({Key? key}) : super(key: key);

  static Route route() {
    return PageRouteBuilder(
      settings: const RouteSettings(name: name),
      pageBuilder: (_, __, ___) => const HomePage(),
      transitionDuration: const Duration(seconds: 0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (_) => getIt(),
      child: _HomeView(),
    );
  }
}

class _HomeView extends StatefulWidget {
  @override
  __HomeViewState createState() => __HomeViewState();
}

class __HomeViewState extends State<_HomeView> {
  @override
  Widget build(BuildContext context) {
    var textTheme = context.textTheme;
    var user = context.select((AuthCubit bloc) => bloc.state.user);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title: const Text('Home'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(AppIcons.exit_to_app),
            onPressed: () => context.read<AuthCubit>().logoutRequested(),
          )
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Welcome ${user?.email}',
            style: textTheme.headline5,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
