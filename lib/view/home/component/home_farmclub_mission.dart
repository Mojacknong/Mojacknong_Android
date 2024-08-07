import 'package:farmus/view/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../view_model/home/home_provider.dart';
import '../../../view_model/home/notifier/veggie_diary_one_notifier.dart';
import 'none/home_none_container.dart';

class HomeFarmclubMission extends ConsumerWidget {
  const HomeFarmclubMission({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedVegeId = ref.watch(selectedVegeIdProvider);
    final diaryOne = ref.watch(veggieDiaryOneModelProvider(selectedVegeId));

    return diaryOne.when(
      data: (diary) {
        if (diary == null) {
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
        } else {
          return GestureDetector();
        }
      },
      loading: () => const CircularProgressIndicator(),
      error: (error, stackTrace) => Center(
        child: Text('Error: $error'),
      ),
    );
  }
}
