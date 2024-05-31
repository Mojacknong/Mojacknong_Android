import 'package:farmus/view/farmclub/component/farmclub_select_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/theme/farmus_theme_text_style.dart';

class FarmclubProfile extends ConsumerWidget {
  const FarmclubProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            const FarmclubSelectProfile(),
            SvgPicture.asset('assets/image/ic_farmclub_mark.svg'),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '상추는현실이되다',
                style: FarmusThemeTextStyle.darkSemiBold20,
              ),
              Text(
                '가입한 지 +12일',
                style: FarmusThemeTextStyle.gray1Medium13,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
