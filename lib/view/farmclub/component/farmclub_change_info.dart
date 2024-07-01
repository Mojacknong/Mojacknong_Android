import 'package:farmus/view/farmclub/component/farmclub_select_profile.dart';
import 'package:farmus/view_model/home/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class FarmclubChangeInfo extends ConsumerWidget {
  const FarmclubChangeInfo(
      {super.key,
      required this.farmclubId,
      required this.farmclubImage,
      required this.type,
      required this.farmclubName,
      required this.isCheck});

  final int farmclubId;
  final String farmclubImage;
  final String farmclubName;
  final String type;
  final bool isCheck;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          FarmclubSelectProfile(image: farmclubImage, size: 56),
          const SizedBox(
            width: 16.0,
          ),
          Expanded(
            child: IntrinsicHeight(
              child: GestureDetector(
                onTap: () {
                  ref.read(selectedFarmclubIdProvider.notifier).state =
                      farmclubId;
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      farmclubName,
                      style: FarmusThemeTextStyle.darkSemiBold17,
                    ),
                    const VerticalDivider(
                      width: 20,
                      thickness: 1,
                      color: FarmusThemeColor.gray4,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      type,
                      style: FarmusThemeTextStyle.darkMedium15,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Visibility(
              visible: isCheck,
              child: SvgPicture.asset('assets/image/ic_check.svg'))
        ],
      ),
    );
  }
}
