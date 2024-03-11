import 'package:farmus/common/base/base_button.dart';
import 'package:flutter/material.dart';

import 'bouncing.dart';

class PrimaryButton extends StatelessWidget implements BaseButton {
  @override
  final String text;
  @override
  final VoidCallback? onPressed;
  @override
  final bool enabled;
  @override
  final Color textColor;
  @override
  final Color backgroundColor;
  @override
  final Color borderColor;

  const PrimaryButton({
    Key? key,
    required this.text,
    this.onPressed,
    required this.enabled,
    required this.textColor,
    required this.backgroundColor,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buttonChild = Text(
      text,
      style: TextStyle(
        color: textColor,
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
                    backgroundColor: MaterialStateProperty.all(backgroundColor),
                    side: MaterialStateProperty.resolveWith(
                      (states) {
                        return BorderSide(
                          color: borderColor,
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
                  backgroundColor: MaterialStateProperty.all(backgroundColor),
                  side: MaterialStateProperty.resolveWith(
                    (states) {
                      return BorderSide(
                        color: borderColor,
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
