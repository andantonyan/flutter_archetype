import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_archetype/presentation/presentation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockLoginCubit extends MockCubit<LoginState> implements LoginCubit {}

class FakeLoginState extends Fake implements LoginState {}

// TODO: try to implement without mocktail
void main() {
  setUpAll(() {
    registerFallbackValue<LoginState>(FakeLoginState());
  });

  late MockLoginCubit loginCubit;

  setUp(() {
    loginCubit = MockLoginCubit();
    when(() => loginCubit.state).thenReturn(const LoginState());

    getIt.allowReassignment = true;
    getIt.registerFactory<LoginCubit>(() => loginCubit);
  });

  group('LoginPage', () {
    testWidgets('emailChanged on page start with default value', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: LoginPage(
            email: 'test@example.com',
          ),
        ),
      );

      verify(() => loginCubit.emailChanged('test@example.com')).called(1);
    });
  });
}
