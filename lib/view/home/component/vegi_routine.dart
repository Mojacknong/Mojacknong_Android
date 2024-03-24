import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class VegiRoutine extends ConsumerWidget {
  const VegiRoutine({super.key, required this.routine, required this.day});

  final String routine;
  final String day;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset("assets/image/ic_check_box.svg"),
          ),
          Text(
            routine,
            style: FarmusThemeTextStyle.darkSemiBold17,
          ),
          const SizedBox(
            width: 12,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 5),
            decoration: ShapeDecoration(
              color: FarmusThemeColor.greenLight3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
            ),
            child: Text(day, style: FarmusThemeTextStyle.green1SemiBold11),
          ),
        ],
      ),
    );
  }
}
