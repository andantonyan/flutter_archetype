import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 20,
      child: PlatformCircularProgressIndicator(
        material: (_, __) => MaterialProgressIndicatorData(strokeWidth: 2),
      ),
    );
  }
}
