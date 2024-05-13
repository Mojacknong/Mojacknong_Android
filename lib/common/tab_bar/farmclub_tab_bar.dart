import 'package:farmus/common/tab_bar/primary_tab_bar.dart';
import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/view/farmclub/component/farmclub_step.dart';
import 'package:farmus/view/farmclub/component/farmclub_step_tip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FarmclubTabBar extends StatelessWidget {
  const FarmclubTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PrimaryTabBar(
      tab: const ['현재', '이전', '다음'],
      tabView: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const FarmclubStep(
                  stepImages: [
                    'assets/image/img_home_motivation.png',
                    'assets/image/img_home_motivation.png'
                  ],
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: ShapeDecoration(
                    color: FarmusThemeColor.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 1, color: FarmusThemeColor.gray4),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const FarmclubStepTip(),
                ),
              ],
            ),
          ),
        ),
        const SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: FarmclubStep(
                  stepImages: [
                    'assets/image/img_home_motivation.png',
                    'assets/image/img_home_motivation.png'
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: FarmclubStep(
                  stepImages: [],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: FarmclubStep(
                  stepImages: [],
                ),
              ),
            ],
          ),
        ),
        Container(),
      ],
      tabViewHeights: 368,
    );
  }
}
