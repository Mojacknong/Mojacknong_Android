import 'package:farmus/view_model/routine/routine_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class VegeRoutine extends ConsumerWidget {
  const VegeRoutine(
      {super.key,
      required this.routine,
      required this.day,
      this.onTap,
      required this.isChecked,
      this.onCheck});

  final String routine;
  final String day;
  final Function()? onTap;
  final bool isChecked;
  final Function()? onCheck;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: onCheck,
            child: Container(
              width: 24,
              height: 24,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        width: 1,
                        color: isChecked
                            ? FarmusThemeColor.white
                            : FarmusThemeColor.gray3),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  color: isChecked
                      ? FarmusThemeColor.gray6
                      : FarmusThemeColor.white),
              child: isChecked
                  ? SvgPicture.asset(
                      'assets/image/ic_check.svg',
                      fit: BoxFit.fill,
                    )
                  : Container(),
            ),
          ),
          const SizedBox(
            width: 8.0,
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 5),
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
