import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../theme/farmus_theme_text_style.dart';

class SelectBoxBasicContent extends ConsumerWidget {
  const SelectBoxBasicContent({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      alignment: Alignment.center,
      child: Text(
        text,
        style: FarmusThemeTextStyle.darkMedium15,
      ),
    );
  }
}
