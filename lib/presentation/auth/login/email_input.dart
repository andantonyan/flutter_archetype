part of 'login_page.dart';

class _EmailInput extends StatelessWidget {
  final String? email;
  final bool readOnly;

  const _EmailInput({
    Key? key,
    this.email,
    required this.readOnly,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var l10n = context.l10n;
    var focusScope = context.focusScope;

    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextFormField(
          initialValue: email,
          readOnly: readOnly,
          onChanged: (email) => context.read<LoginCubit>().emailChanged(email),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: l10n.email,
          ),
          autocorrect: false,
          textInputAction: TextInputAction.next,
          validator: (_) => l10n.translateValidationMessage(state.email.error),
          onEditingComplete: () => focusScope.nextFocus(),
        );
      },
    );
  }
}
