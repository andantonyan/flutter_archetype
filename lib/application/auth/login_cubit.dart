import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_archetype/domain/domain.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  final AuthRepository _authRepository;

  LoginCubit(this._authRepository) : super(const LoginState());

  void emailChanged(String? value) {
    var email = EmailAddress.dirty(value ?? '');

    emit(
      state.copyWith(
        email: email,
        status: Formz.validate([email, state.password]),
      ),
    );
  }

  void passwordChanged(String? value) {
    var password = Password.dirty(value ?? '');

    emit(
      state.copyWith(
        password: password,
        status: Formz.validate([state.email, password]),
      ),
    );
  }

  Future<void> loginFormSubmitted() async {
    if (!state.status.isValidated) return;

    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    try {
      await _authRepository.loginWithEmailAndPassword(
        state.email.value,
        state.password.value,
      );

      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    } on Exception catch (err) {
      emit(state.copyWith(status: FormzStatus.submissionFailure, err: err));
    }
  }
}
