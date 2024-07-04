import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_color.dart';

class FarmclubSelectProfile extends ConsumerWidget {
  final String image;
  final double size;

  const FarmclubSelectProfile(
      {super.key, required this.image, required this.size});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: size,
          height: size,
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
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.cover,
            ),
            shape: BoxShape.circle,
          ),
        )
      ],
    );
  }
}
