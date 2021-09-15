part of 'register_page.dart';

class _RegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var l10n = context.l10n;

    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const LoadingIndicator()
            : SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  child: Text(l10n.signUp.toUpperCase()),
                  onPressed: () => _submit(context),
                ),
              );
      },
    );
  }

  void _submit(BuildContext context) {
    context.focusScope.unfocus();

    if (context.form.validate()) {
      context.read<RegisterCubit>().registerFormSubmitted();
    }
  }
}
