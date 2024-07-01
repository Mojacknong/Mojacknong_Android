import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/farmclub/component/farmclub_change_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../model/my_farmclub/my_farmclub_model.dart';
import '../../../view_model/my_farmclub/my_farmclub_notifier.dart';

class FarmclubChangeBottomSheetContent extends ConsumerWidget {
  const FarmclubChangeBottomSheetContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<MyFarmclubModel>> myFarmclub =
        ref.watch(myFarmclubModelProvider);

    return myFarmclub.when(
      data: (farmclub) {
        if (farmclub.isEmpty) {
          return Container();
        } else {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: SizedBox(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              '내 팜클럽',
                              style: FarmusThemeTextStyle.darkMedium15,
                            ),
                            const SizedBox(
                              height: 16.0,
                            ),
                            Column(
                              children: farmclub.map((club) {
                                return Column(
                                  children: [
                                    FarmclubChangeInfo(
                                      farmclubId: club.farmClubId,
                                      farmclubImage: club.farmClubImage,
                                      farmclubName: club.farmClubName,
                                      type: club.veggieName,
                                      isCheck: true,
                                    ),
                                    const Divider(
                                      height: 1.0,
                                      color: FarmusThemeColor.gray5,
                                    ),
                                  ],
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      },
      error: (error, stack) => Center(child: Text('Error: $error')),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
