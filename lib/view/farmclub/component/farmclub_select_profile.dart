import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_color.dart';

class FarmclubSelectProfile extends ConsumerWidget {
  const FarmclubSelectProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            'assets/image/image_farmclub_profile_background.png',
          ),
        ),
        Container(
          width: 56,
          height: 56,
          decoration: const BoxDecoration(
            color: FarmusThemeColor.white,
            shape: BoxShape.circle,
          ),
        ),
        Container(
          width: 48,
          height: 48,
          decoration: const BoxDecoration(
            color: FarmusThemeColor.gray7,
            shape: BoxShape.circle,
          ),
        )
      ],
    );
  }
}
