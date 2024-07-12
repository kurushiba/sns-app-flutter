import 'package:flutter/material.dart';
import 'package:sns_app/lib/app_focus_manager.dart';

class KeyboardAware extends StatelessWidget {
  final Widget child;
  const KeyboardAware({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppFocusManager.closeKeyboard(context);
      },
      child: child,
    );
  }
}
