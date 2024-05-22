import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_color.dart';

class FarmclubBasicProfile extends ConsumerWidget {
  const FarmclubBasicProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: const BoxDecoration(
            color: FarmusThemeColor.gray7,
            shape: BoxShape.circle,
          ),
        )
      ],
    );
  }
}
