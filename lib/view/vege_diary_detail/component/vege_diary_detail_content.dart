import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/farmus_picture.dart';
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
            '피드' * 20,
            style: FarmusThemeTextStyle.darkMedium15,
          ),
        ),
      ],
    );
  }
}
