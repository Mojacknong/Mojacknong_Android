import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';
import '../../../view_model/routine/notifier/routine_check_notifier.dart';

class VegeRoutine extends ConsumerWidget {
  const VegeRoutine({
    super.key,
    required this.routine,
    this.day,
    required this.isChecked,
    required this.routineId,
  });

  final String routine;
  final int? day;
  final bool isChecked;
  final int routineId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              ref
                  .read(routineCheckNotifierProvider.notifier)
                  .routineCheck(routineId);
            },
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
          Row(
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
        ],
      ),
    );
  }
}
