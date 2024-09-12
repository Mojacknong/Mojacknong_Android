import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/theme/farmus_theme_text_style.dart';
import '../../../model/mission/mission_user_list_model.dart';
import '../../farmclub/component/farmclub_select_profile.dart';

class MissionFeedSelectProfile extends ConsumerWidget {
  final MissionUserListModel user;
  final bool isSelected;

  const MissionFeedSelectProfile({super.key, required this.user, required this.isSelected});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          FarmclubSelectProfile(
            image: user.profileImage,
            size: 64,
            isSelected : isSelected
          ),
          const SizedBox(height: 8.0),
          Text(
            user.nickname,
            style: FarmusThemeTextStyle.gray1Medium11,
          ),
        ],
      ),
    );
  }
}
