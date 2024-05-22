import 'package:farmus/view/mission_feed/component/farmclub_basic_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_text_style.dart';

class MissionFeedBasicProfile extends ConsumerWidget {
  const MissionFeedBasicProfile({super.key, required this.nickname});

  final String nickname;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          const FarmclubBasicProfile(),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            nickname,
            style: FarmusThemeTextStyle.gray1Medium11,
          ),
        ],
      ),
    );
  }
}
