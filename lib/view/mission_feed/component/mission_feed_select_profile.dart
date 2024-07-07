import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/theme/farmus_theme_text_style.dart';
import '../../../model/my_farmclub/my_farmclub_info_model.dart';
import '../../../model/my_farmclub/my_farmclub_model.dart';
import '../../../view_model/home/home_provider.dart';
import '../../../view_model/my_farmclub/my_farmclub_info_notifier.dart';
import '../../../view_model/my_farmclub/my_farmclub_notifier.dart';
import '../../../view_model/on_boarding/on_boarding_finish_notifier.dart';
import '../../farmclub/component/farmclub_select_profile.dart';

class MissionFeedSelectProfile extends ConsumerWidget {
  const MissionFeedSelectProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<MyFarmclubModel>> myFarmclub =
        ref.watch(myFarmclubModelProvider);
    final selectedFarmclubId = ref.watch(selectedFarmclubIdProvider);
    final AsyncValue<MyFarmclubInfoModel> myFarmclubInfo = ref.watch(
        myFarmclubInfoModelProvider(
            selectedFarmclubId ?? myFarmclub.value?.first.farmClubId));
    final nickName = ref.watch(onBoardingFinishNotifierProvider);

    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: myFarmclubInfo.when(
          data: (farmclubInfo) {
            return Column(
              children: [
                FarmclubSelectProfile(
                  image: farmclubInfo.farmClubImage,
                  size: 64,
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  '${nickName.value}',
                  style: FarmusThemeTextStyle.gray1Medium11,
                ),
              ],
            );
          },
          loading: () => const CircularProgressIndicator(),
          error: (error, stack) =>
              SvgPicture.asset('assets/image/ic_alert_circle.svg'),
        ));
  }
}
