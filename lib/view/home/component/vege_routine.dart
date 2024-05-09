import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class VegeRoutine extends ConsumerWidget {
  const VegeRoutine(
      {super.key, required this.routine, required this.day, this.onTap});

  final String routine;
  final String day;
  final Function()? onTap;

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
          GestureDetector(
            onTap: onTap,
            child: Row(
              children: [
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
                  child: Text(
                    "$day일 1회",
                    style: FarmusThemeTextStyle.green1SemiBold11,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
