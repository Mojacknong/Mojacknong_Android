import 'package:farmus/view_model/routine/notifier/routine_bottom_sheet_notifier.dart';
import 'package:farmus/view_model/routine/notifier/routine_delete_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/button/primary_color_button.dart';
import '../../../common/button/white_color_button.dart';
import '../../../common/dialog/check_dialog.dart';
import '../../../common/form/digits_text_form_field.dart';
import '../../../common/form/not_underline_text_form_field.dart';
import '../../../common/switch/primary_switch.dart';
import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class RoutineBottomSheetContent extends ConsumerWidget {
  const RoutineBottomSheetContent(
      {super.key,
      required this.myVeggieId,
      this.routineId,
      required this.routine,
      this.day,
      required this.isCreate});

  final int myVeggieId;
  final int? routineId;
  final String routine;
  final int? day;
  final bool isCreate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routineInfo = ref.watch(routineBottomSheetNotifierProvider(
      myVeggieId: myVeggieId,
      routineName: routine,
      period: day ?? -1,
      isSwitch: day != null && day != -1,
    ));
    final routineNotifier = ref.watch(routineBottomSheetNotifierProvider(
      myVeggieId: myVeggieId,
      routineName: routine,
      period: day ?? -1,
      isSwitch: day != null && day != -1,
    ).notifier);

    var isComplete = routineInfo.value?.isComplete ?? false;
    var isSwitch = routineInfo.value?.isSwitch ?? true;

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
                        Expanded(
                          child: SizedBox(
                            height: 35,
                            width: double.maxFinite,
                            child: NotUnderlineTextFormField(
                              maxLength: 10,
                              hintText: '루틴을 입력해 주세요',
                              initialValue: routine,
                              onChanged: (value) {
                                routineNotifier.updateName(value);
                              },
                            ),
                          ),
                        ),
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
                            SizedBox(
                                width: 50,
                                child: DigitsTextFormField(
                                  initialValue: isCreate ? '' : '$day',
                                  readOnly: !isSwitch,
                                  onChanged: (value) {
                                    int? period = int.tryParse(value);
                                    routineNotifier.updatePeriod(period);
                                  },
                                )),
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
                      PrimarySwitch(
                        switchValue: isSwitch,
                        switchToggle: () {
                          routineNotifier.toggle();
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: WhiteColorButton(
                          text: isCreate ? '취소' : '삭제',
                          onPressed: isCreate
                              ? () {
                                  Navigator.pop(context);
                                }
                              : () {
                                  Navigator.pop(context);
                                  ref
                                      .read(routineDeleteNotifierProvider
                                          .notifier)
                                      .routineDelete(routineId!);
                                },
                          enabled: true,
                        ),
                      ),
                      Expanded(
                        child: PrimaryColorButton(
                          text: isCreate ? '확인' : '수정',
                          onPressed: isCreate
                              ? () {
                                  ref
                                      .read(routineBottomSheetNotifierProvider(
                                        myVeggieId: myVeggieId,
                                        routineName: routine,
                                        period: day ?? -1,
                                        isSwitch: day != null && day != -1,
                                      ).notifier)
                                      .routineAdd(
                                          myVeggieId,
                                          routineInfo.value!.routineName!,
                                          routineInfo.value!.period!);
                                  Navigator.pop(context);
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      Future.delayed(const Duration(seconds: 2),
                                          () {
                                        Navigator.pop(context);
                                      });
                                      return const CheckDialog(
                                        text: "새 루틴을 추가했어요",
                                      );
                                    },
                                  );
                                }
                              : () {
                                  ref
                                      .read(routineBottomSheetNotifierProvider(
                                        myVeggieId: myVeggieId,
                                        routineName: routine,
                                        period: day ?? -1,
                                        isSwitch: day != null && day != -1,
                                      ).notifier)
                                      .routineEdit(
                                          routineId!,
                                          routineInfo.value!.routineName!,
                                          routineInfo.value!.period!);
                                  Navigator.pop(context);
                                },
                          enabled: isComplete,
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
