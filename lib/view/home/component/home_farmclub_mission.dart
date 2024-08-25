import 'package:farmus/view/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../model/my_farmclub/my_farmclub_info_model.dart';
import '../../../view_model/home/home_provider.dart';
import '../../../view_model/my_farmclub/my_farmclub_info_notifier.dart';
import '../../../view_model/my_vege/notifier/my_veggie_profile_notifier.dart';
import '../../farmclub/component/farmclub_step.dart';
import 'none/home_none_container.dart';

class HomeFarmclubMission extends ConsumerWidget {
  const HomeFarmclubMission({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedVegeId = ref.watch(selectedVegeIdProvider);
    var profile = ref.watch(myVeggieProfileProvider(selectedVegeId));

    final selectedFarmclubId = ref.watch(selectedFarmclubIdProvider);
    final AsyncValue<MyFarmclubInfoModel> myFarmclubInfo =
        ref.watch(myFarmclubInfoModelProvider(selectedFarmclubId));

    return profile.when(
      data: (profileInfo) => profileInfo.step == -1
          ? HomeNoneContainer(
              title: '가입한 팜클럽이 없어요',
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (builder) => const MainScreen(
                      selectedIndex: 2,
                    ),
                  ),
                  (route) => false,
                );
              },
              buttonText: '팜클럽 가입하기',
            )
          : myFarmclubInfo.when(
              data: (farmclubInfo) => FarmclubStep(
                wholeMember: farmclubInfo.wholeMemberCount,
                step: farmclubInfo.steps[farmclubInfo.currentStep - 1],
                farmclubInfo: farmclubInfo,
                isButton: true,
              ),
              error: (error, stack) =>
                  Center(child: Text('Error: ${error.toString()}')),
              loading: () => Container(),
            ),
      error: (error, stack) =>
          Center(child: Text('Error: ${error.toString()}')),
      loading: () => Container(),
    );
  }
}
