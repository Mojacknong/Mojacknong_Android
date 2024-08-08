import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import 'theme/farmus_theme_color.dart';
import 'theme/farmus_theme_text_style.dart';

class ContentEmpty extends ConsumerWidget {
  const ContentEmpty({super.key, required this.text, this.padding});

  final String text;
  final double? padding;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: EdgeInsets.all(padding ?? 10),
        decoration: ShapeDecoration(
          color: FarmusThemeColor.background,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/image/ic_farmclub_mark.svg'),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              text,
              style: FarmusThemeTextStyle.gray2Medium15,
            ),
          ],
        ),
      ),
    );
  }
}
