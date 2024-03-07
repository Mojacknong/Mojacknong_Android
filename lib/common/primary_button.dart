import 'package:farmus/common/base/base_button.dart';
import 'package:farmus/common/farmus_theme_color.dart';
import 'package:flutter/material.dart';

import 'bouncing.dart';

class PrimaryButton extends StatelessWidget implements BaseButton {
  @override
  final String text;
  @override
  final VoidCallback? onPressed;
  @override
  final bool enabled;

  const PrimaryButton({
    Key? key,
    required this.text,
    this.onPressed,
    required this.enabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buttonChild = Text(
      text,
      style: TextStyle(
        color: enabled ? FarmusThemeColor.white : FarmusThemeColor.grey3,
      ),
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        height: 48,
        child: enabled
            ? Bouncing(
          onPress: onPressed,
          child: TextButton(
            onPressed: onPressed,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  FarmusThemeColor.primary),
              side: MaterialStateProperty.resolveWith(
                    (states) {
                  return const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  );
                },
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            child: buttonChild,
          ),
        )
            : TextButton(
          onPressed: null,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                FarmusThemeColor.grey4),
            side: MaterialStateProperty.resolveWith(
                  (states) {
                return const BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                );
              },
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          child: buttonChild,
        ),
      ),
    );
  }
}
