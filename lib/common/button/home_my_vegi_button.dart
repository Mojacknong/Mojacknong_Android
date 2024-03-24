import 'package:farmus/common/base/base_button.dart';
import 'package:farmus/common/button/primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeMyVegiButton extends ConsumerWidget implements BaseButton {
  const HomeMyVegiButton({
    this.width,
    this.height,
    super.key,
    required this.enabled,
    required this.backgroundColor,
    required this.text,
    required this.onPressed,
    required this.borderColor,
    required this.textColor,
  });

  @override
  final double? width;

  @override
  final double? height;

  @override
  final Color backgroundColor;

  @override
  final Color borderColor;

  @override
  final bool enabled;

  @override
  final void Function()? onPressed;

  @override
  final String text;

  @override
  final Color textColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PrimaryButton(
      width: 90,
        height: 31,
        text: text,
        enabled: enabled,
        textColor: textColor,
        backgroundColor: backgroundColor,
        borderColor: borderColor);
  }
}
