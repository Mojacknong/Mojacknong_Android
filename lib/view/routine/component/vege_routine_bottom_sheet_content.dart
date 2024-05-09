import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/button/primary_color_button.dart';
import '../../../common/button/white_color_button.dart';
import '../../../common/form/digits_text_form_field.dart';
import '../../../common/form/not_underline_text_form_field.dart';
import '../../../common/primary_switch.dart';
import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class VegeRoutineBottomSheetContent extends ConsumerWidget {
  const VegeRoutineBottomSheetContent({super.key, this.routine, this.day});

  final String? routine;
  final String? day;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SizedBox(
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
              children: [
                IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 48.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const VerticalDivider(
                          color: FarmusThemeColor.green1,
                          thickness: 2,
                          indent: 0,
                          endIndent: 10,
                        ),
                        SizedBox(
                            height: 35,
                            width: 250,
                            child: NotUnderlineTextFormField(
                              maxLength: 10,
                              hintText: '루틴을 입력해 주세요',
                              initialValue: '$routine',
                            )),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Divider(
                    color: FarmusThemeColor.gray4,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            SizedBox(width: 50, child: DigitsTextFormField(initialValue: '$day',)),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              '일 마다 반복하기',
                              style: FarmusThemeTextStyle.darkMedium17,
                            ),
                          ],
                        ),
                      ),
                      PrimarySwitch(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: WhiteColorButton(
                          text: '취소',
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          enabled: true,
                        ),
                      ),
                      Expanded(
                        child: PrimaryColorButton(
                          text: '확인',
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          enabled: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
