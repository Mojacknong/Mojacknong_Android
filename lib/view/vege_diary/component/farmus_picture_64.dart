import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/theme/farmus_theme_color.dart';

class FarmusPicture64 extends ConsumerWidget {
  const FarmusPicture64({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 64,
      height: 64,
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
