import 'package:farmus/view/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../model/my_farmclub/my_farmclub_info_model.dart';
import '../../../view_model/home/home_provider.dart';
import '../../../view_model/my_farmclub/my_farmclub_info_notifier.dart';
import '../../../view_model/my_vege/notifier/my_veggie_list.dart';
import '../../farmclub/component/farmclub_step.dart';
import 'none/home_none_container.dart';

class HomeFarmclubMission extends ConsumerStatefulWidget {
  const HomeFarmclubMission({super.key});

  @override
  _HomeFarmclubMissionState createState() => _HomeFarmclubMissionState();
}

class _HomeFarmclubMissionState extends ConsumerState<HomeFarmclubMission> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final veggieList = ref.read(myVeggieListModelProvider);
      final selectedVegeId = ref.read(selectedVegeIdProvider);
      if (veggieList.value!.isNotEmpty && selectedVegeId == null) {
        ref.read(selectedVegeIdProvider.notifier).state =
            veggieList.value!.first.myVeggieId;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final selectedVegeId = ref.watch(selectedVegeIdProvider);
    final veggieList = ref.watch(myVeggieListModelProvider);

    return veggieList.when(
      data: (veggieList) {
        final selectedVeggie = veggieList.firstWhere(
          (veggie) => veggie.myVeggieId == selectedVegeId,
          orElse: () => veggieList.first,
        );

        if (selectedVeggie.userFarmClubId == -1) {
          return HomeNoneContainer(
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
          );
        }

        final AsyncValue<MyFarmclubInfoModel> myFarmclubInfo = ref.watch(
          myFarmclubInfoModelProvider(selectedVeggie.userFarmClubId),
        );

        return myFarmclubInfo.when(
          data: (farmclubInfo) => FarmclubStep(
            wholeMember: farmclubInfo.wholeMemberCount,
            step: farmclubInfo.steps[farmclubInfo.currentStep - 1],
            farmclubInfo: farmclubInfo,
            isButton: true,
          ),
          error: (error, stack) =>
              Center(child: Text('Error: ${error.toString()}')),
          loading: () => const Center(child: CircularProgressIndicator()),
        );
      },
      error: (error, stack) =>
          Center(child: Text('Error: ${error.toString()}')),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
