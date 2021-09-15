import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import 'auth/auth.dart';
import 'core/core.dart';
import 'home/home.dart';
import 'splash/splash.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NetworkCubit>(
          create: (_) => getIt(),
        ),
        BlocProvider<SettingsCubit>(
          create: (_) => getIt(),
        ),
        BlocProvider<AuthCubit>(
          create: (_) => getIt(),
        ),
        BlocProvider<AppLinksCubit>(
          create: (_) => getIt(),
        ),
      ],
      child: _AppView(),
    );
  }
}

class _AppView extends StatefulWidget {
  @override
  __AppViewState createState() => __AppViewState();
}

class __AppViewState extends State<_AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      buildWhen: (previous, current) => previous.selectedLocale != current.selectedLocale,
      builder: (context, state) {
        Intl.defaultLocale = state.selectedLocale?.languageCode;

        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            systemNavigationBarColor: Colors.black,
            statusBarIconBrightness: Brightness.dark,
            systemNavigationBarIconBrightness: Brightness.dark,
          ),
          child: MaterialApp(
            title: 'Flutter Archetype',
            navigatorKey: _navigatorKey,
            // primarySwatch: kPrimarySwatch,
            theme: AppTheme.getMaterialThemeData(context, selectedLocale: state.selectedLocale),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            locale: state.selectedLocale,
            navigatorObservers: [
              getIt<AnalyticsService>().observer,
            ],
            builder: (context, child) {
              return KeyboardHider(
                child: BlocListener<AuthCubit, AuthState>(
                  listener: _authListener,
                  child: child,
                ),
              );
            },
            onGenerateRoute: (_) => SplashPage.route(),
          ),
        );
      },
    );
  }

  void _authListener(BuildContext context, AuthState state) {
    var route = state.maybeWhen<Route>(
      loading: () => LoadingPage.route(),
      unauthenticated: () => LoginPage.route(),
      authenticated: (userRecord) => HomePage.route(),
      orElse: () => SplashPage.route(),
    );

    _navigatorKey.currentState!.pushAndRemoveUntil<void>(route, (route) => false);
  }
}
