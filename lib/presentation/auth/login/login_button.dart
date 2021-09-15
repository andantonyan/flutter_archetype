part of 'login_page.dart';

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var l10n = context.l10n;

    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const LoadingIndicator()
            : SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  child: Text(l10n.signIn.toUpperCase()),
                  onPressed: () => _submit(context),
                ),
              );
      },
    );
  }

  void _submit(BuildContext context) {
    context.focusScope.unfocus();

    if (context.form.validate()) {
      context.read<LoginCubit>().loginFormSubmitted();
    }
  }
}
