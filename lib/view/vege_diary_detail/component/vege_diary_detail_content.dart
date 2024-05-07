import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/farmus_picture.dart';
import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class VegeDiaryDetailContent extends ConsumerWidget {
  const VegeDiaryDetailContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const FarmusPicture(
          height: 270,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            '일기' * 20,
            style: FarmusThemeTextStyle.darkMedium15,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1,
                color: FarmusThemeColor.gray4,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('채소 상태', style: FarmusThemeTextStyle.gray2Medium13),
              SizedBox(width: 8),
              Text('좋음', style: FarmusThemeTextStyle.gray6SemiBold13),
            ],
          ),
        ),
      ],
    );
  }
}
