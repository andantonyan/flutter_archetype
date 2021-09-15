part of 'register_page.dart';

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var l10n = context.l10n;
    var focusScope = context.focusScope;

    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextFormField(
          onChanged: (email) => context.read<RegisterCubit>().emailChanged(email),
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
