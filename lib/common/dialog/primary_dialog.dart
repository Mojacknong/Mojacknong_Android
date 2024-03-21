import 'package:farmus/common/base/base_dialog.dart';
import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:flutter/material.dart';

class PrimaryDialog extends StatelessWidget implements BaseDialog {
  const PrimaryDialog({super.key, this.title, this.content, this.actions});

  @override
  final Widget? title;
  @override
  final Widget? content;
  @override
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: title,
      content: content,
      actions: actions,
      backgroundColor: FarmusThemeColor.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(24)),

      ),
    );
  }
}
