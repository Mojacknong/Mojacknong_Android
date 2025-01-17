import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_text_style.dart';
import '../../farmclub/component/farmclub_select_profile.dart';

class MissionFeedProfile extends ConsumerWidget {
  const MissionFeedProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          FarmclubSelectProfile(
            image: '',
            size: 64,
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            '파머시치',
            style: FarmusThemeTextStyle.gray1Medium11,
          ),
        ],
      ),
    );
  }
}
