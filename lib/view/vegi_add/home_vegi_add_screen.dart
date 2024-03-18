import 'package:farmus/common/app_bar/primary_app_bar.dart';
import 'package:farmus/common/button/primary_button.dart';
import 'package:farmus/view_model/home/home_vegi_add_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../common/theme/farmus_theme_color.dart';
import 'component/home_vegi_add_first.dart';

class HomeVegiAddScreen extends ConsumerWidget {
  const HomeVegiAddScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(homeVegiInfoAddProvider).copyWith(
        isFirstSelect: false,
        isSecondSelect: false,
        isThirdSelect: false,
        isFourthSelect: false,
        isFiveSelect: false,
        isSixSelect: false,
        isVegiAddInfoComplete: false);
    final isVegiSelected = ref.watch(homeVegiInfoAddProvider);
    var isVegiAddInfoComplete = isVegiSelected.isVegiAddInfoComplete;

    return Scaffold(
      appBar: PrimaryAppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset("assets/image/ic_left.svg"),
        ),
        title: "채소 등록",
        centerTitle: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            child: HomeVegiAddFirst(),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: PrimaryButton(
              text: "다음",
              onPressed: () {},
              enabled: isVegiAddInfoComplete,
              textColor: isVegiAddInfoComplete
                  ? FarmusThemeColor.white
                  : FarmusThemeColor.gray3,
              backgroundColor: isVegiAddInfoComplete
                  ? FarmusThemeColor.primary
                  : FarmusThemeColor.gray4,
              borderColor: FarmusThemeColor.white,
            ),
          ),
        ],
      ),
    );
  }
}
