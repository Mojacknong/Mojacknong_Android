import 'package:farmus/common/base/base_button.dart';
import 'package:farmus/common/primary_button.dart';
import 'package:flutter/material.dart';

class OnBoardingNextButton extends StatelessWidget implements BaseButton {
  @override
  final String text;
  @override
  final VoidCallback onPressed;
  final bool enabled;

  const OnBoardingNextButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.enabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      text: text,
      onPressed: enabled ? onPressed : null,
    );
  }
}
