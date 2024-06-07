import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/material.dart';

class FarmclubBottomSheetSubtitle extends StatelessWidget {
  const FarmclubBottomSheetSubtitle({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: FarmusThemeTextStyle.gray2Medium13,
    );
  }
}
