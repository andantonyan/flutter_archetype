import 'package:flutter/material.dart';

abstract class KeyboardHiderMixin {
  void hideKeyboard({BuildContext? context, bool hideTextInput = true}) {
    FocusManager.instance.primaryFocus?.unfocus();
  }
}

class KeyboardHider extends StatelessWidget with KeyboardHiderMixin {
  final Widget child;

  const KeyboardHider({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => hideKeyboard(context: context),
      child: child,
    );
  }
}
