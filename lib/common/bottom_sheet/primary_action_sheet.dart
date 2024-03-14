import 'package:farmus/common/base/base_action_sheet.dart';
import 'package:flutter/cupertino.dart';

import '../farmus_theme_text_style.dart';

class PrimaryActionSheet extends StatelessWidget implements BaseActionSheet {
  const PrimaryActionSheet({
    super.key,
    this.title,
    this.actions,
    this.cancelButton
  });

  @override
  final String? title;
  @override
  final List<Widget>? actions;
  @override
  final Widget? cancelButton;


  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      title: title != null
          ? Text(
              title!,
              style: FarmusThemeTextStyle.gray2Medium12,
            )
          : null,
      actions: actions,
      cancelButton: cancelButton,
    );
  }
}
