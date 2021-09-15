part of 'register_page.dart';

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var l10n = context.l10n;
    var focusScope = context.focusScope;

    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: l10n.password,
          ),
          onChanged: (password) => context.read<RegisterCubit>().passwordChanged(password),
          validator: (_) => l10n.translateValidationMessage(state.password.error),
          onFieldSubmitted: (_) => focusScope.unfocus(),
        );
      },
    );
  }
}
