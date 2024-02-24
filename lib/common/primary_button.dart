import 'package:flutter/material.dart';

import 'bouncing.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? surfaceTintColor;

  const PrimaryButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.surfaceTintColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Bouncing(
      onPress: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          height: 48,
          child: TextButton(
            onPressed: onPressed,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(backgroundColor),
              foregroundColor: MaterialStateProperty.all(foregroundColor),
              side: MaterialStateProperty.resolveWith(
                (states) {
                  return BorderSide(
                    color: surfaceTintColor != null
                        ? surfaceTintColor!
                        : Colors.transparent,
                    width: 1.0,
                  );
                },
              ), // 테두리 두께 설정
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            child: Text(text),
          ),
        ),
      ),
    );
  }
}
