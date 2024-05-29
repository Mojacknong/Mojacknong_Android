import 'package:farmus/common/base/base_action_sheet.dart';
import 'package:flutter/cupertino.dart';

import '../theme/farmus_theme_text_style.dart';

class PrimaryActionSheet extends StatelessWidget implements BaseActionSheet {
  const PrimaryActionSheet(
      {super.key,
      this.title,
      this.message,
      this.actions,
      this.cancelButton,
      this.messagePadding});

  @override
  final String? title;
  @override
  final List<Widget>? actions;
  @override
  final Widget? cancelButton;
  @override
  final String? message;
  final EdgeInsetsGeometry? messagePadding;

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      title: title != null
          ? Text(
              title!,
              style: FarmusThemeTextStyle.gray2Medium12,
            )
          : null,
      message: message != null
          ? Padding(
              padding: messagePadding ?? EdgeInsets.zero,
              child: Text(
                message!,
                style: FarmusThemeTextStyle.darkMedium16,
              ),
            )
          : null,
      actions: actions ?? [],
      cancelButton: cancelButton,
    );
  }
}
