import 'package:farmus/view/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../model/my_farmclub/my_farmclub_info_model.dart';
import '../../../view_model/home/home_provider.dart';
import '../../../view_model/my_farmclub/my_farmclub_info_notifier.dart';
import '../../farmclub/component/farmclub_step.dart';
import 'none/home_none_container.dart';

class HomeFarmclubMission extends ConsumerWidget {
  const HomeFarmclubMission({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedFarmclubId = ref.watch(selectedFarmclubIdProvider);
    final farmclubData = ref.watch(myFarmclubInfoModelProvider(selectedFarmclubId));

    return farmclubData.when(
      data: (farmclubs) {
        if (farmclubs == null) {
          return HomeNoneContainer(
            title: '가입한 팜클럽이 없어요',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (builder) => const MainScreen(selectedIndex: 1),
                ),
              );
            },
            buttonText: '팜클럽 가입하기',
          );
        } else {
          final currentStepIndex = farmclubs.currentStep - 1;
          final currentStep = farmclubs.steps[currentStepIndex];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MainScreen(selectedIndex: 1),
                ),
              );
            },
            child: Column(
              children: [
                FarmclubStep(
                  wholeMember: farmclubs.wholeMemberCount,
                  step: currentStep,
                  farmclubInfo: farmclubs,
                  isButton: true,
                ),
              ],
            ),
          );
        }
      },
      loading: () => const CircularProgressIndicator(),
      error: (error, stackTrace) => Center(
        child: Text('Error: $error'),
      ),
    );
  }
}
