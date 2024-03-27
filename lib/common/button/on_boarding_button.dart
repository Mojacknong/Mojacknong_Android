import 'package:farmus/common/button/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnBoardingButton extends ConsumerWidget {

  final String text;
  final VoidCallback onPressed;
  final bool enabled;
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;

  const OnBoardingButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.enabled,
    required this.textColor,
    required this.backgroundColor,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PrimaryButton(
        width: double.infinity,
        height: 48,
        text: text,
        onPressed: enabled ? onPressed : null,
        enabled: enabled,
        textColor: textColor,
        backgroundColor: backgroundColor,
        borderColor: borderColor,
        fontSize: 15,
      ),
    );
  }
}
