import 'package:farmus/common/base/base_button.dart';
import 'package:farmus/common/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnBoardingNextButton extends ConsumerWidget implements BaseButton {
  @override
  final String text;
  @override
  final VoidCallback onPressed;
  @override
  final bool enabled;

  const OnBoardingNextButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.enabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print(enabled);
    return PrimaryButton(
      text: text,
      onPressed: enabled ? onPressed : null,
      enabled: enabled,
    );
  }
}
