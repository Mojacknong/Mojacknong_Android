import 'package:farmus/common/button/primary_color_button.dart';
import 'package:farmus/common/button/select_box_basic_content.dart';
import 'package:farmus/common/button/white_color_button.dart';
import 'package:farmus/common/select_box.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class FarmclubExitBottomSheetContent extends ConsumerWidget {
  const FarmclubExitBottomSheetContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.5,
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
                          const Text(
                            '상추는현실이되다',
                            style: FarmusThemeTextStyle.gray1Medium13,
                          ),
                          const SizedBox(
                            height: 24.0,
                          ),
                          SelectBox(
                            selectBox: () {},
                            enabled: false,
                            selectBoxContent: const SelectBoxBasicContent(
                              text: '채소를 더 이상 키우지 않아요',
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          SelectBox(
                            selectBox: () {},
                            enabled: false,
                            selectBoxContent: const SelectBoxBasicContent(
                              text: '채소는 계속 키우지만 팜클럽은 나갈래요',
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                  'assets/image/ic_alert_circle.svg'),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                "지금까지의 팜클럽 기록이 모두 사라져요",
                                style: FarmusThemeTextStyle.redMedium13,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: WhiteColorButton(
                                  text: '취소',
                                  onPressed: () {},
                                  enabled: true,
                                ),
                              ),
                              Expanded(
                                child: PrimaryColorButton(
                                  text: '나가기',
                                  onPressed: () {},
                                  enabled: true,
                                ),
                              ),
                            ],
                          )
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
