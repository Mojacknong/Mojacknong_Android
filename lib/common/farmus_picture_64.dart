import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import 'theme/farmus_theme_color.dart';

class FarmusPictureFix extends ConsumerWidget {
  const FarmusPictureFix({super.key, required this.size});

  final double size;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: size,
      height: size,
      decoration: ShapeDecoration(
        color: FarmusThemeColor.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: SvgPicture.asset(
        "assets/image/ic_farm_club_mark.svg",
        fit: BoxFit.cover,
      ),
    );
  }
}
