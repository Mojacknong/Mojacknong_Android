import 'package:farmus/common/button/primary_color_button.dart';
import 'package:farmus/common/button/white_color_button.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/dialog/check_dialog.dart';
import '../../../view_model/my_farmclub/my_farmclub_delete_notifier.dart';

class FarmclubExitBottomSheetContent extends ConsumerWidget {
  final String farmClubName;
  final int farmClubId;

  const FarmclubExitBottomSheetContent(
      {super.key, required this.farmClubName, required this.farmClubId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.4,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '팜클럽 나가기',
                            style: FarmusThemeTextStyle.darkSemiBold21,
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            farmClubName,
                            style: FarmusThemeTextStyle.gray1Medium13,
                          ),
                          const SizedBox(
                            height: 24.0,
                          ),
                          const Text(
                            '팜클럽을 나가면 \n지금까지의 팜클럽 기록이 모두 사라져요\n정말로 나가시겠어요?',
                            style: FarmusThemeTextStyle.darkMedium15,
                          ),
                          const SizedBox(
                            height: 24.0,
                          ),
                          Row(
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
                                  text: '나가기',
                                  onPressed: () {
                                    ref
                                        .read(myFarmclubDeleteNotifierProvider
                                            .notifier)
                                        .myFarmclubDelete(farmClubId);
                                    Navigator.pop(context);
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        Future.delayed(
                                            const Duration(seconds: 2), () {
                                          Navigator.of(context).pop();
                                        });
                                        return const CheckDialog(
                                          text: '팜클럽을 탈퇴했어요',
                                        );
                                      },
                                    );
                                  },
                                  enabled: true,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
