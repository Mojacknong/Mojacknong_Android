import 'package:farmus/common/app_bar/primary_app_bar.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view_model/home/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/button/primary_color_button.dart';
import '../../model/my_farmclub/farmclub_success_model.dart';
import '../../view_model/my_farmclub/farmclub_success_info_notifier.dart';
import '../main/main_screen.dart';
import 'component/farmclub_success_info.dart';

class FarmclubSuccessScreen extends ConsumerWidget {
  const FarmclubSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedFarmclubId = ref.watch(selectedFarmclubIdProvider);
    final AsyncValue<FarmclubSuccessModel> myFarmclubSuccessList =
        ref.watch(farmclubSuccessModelProvider(selectedFarmclubId));

    return Scaffold(
      appBar: PrimaryAppBar(
        leading: Container(),
        title: null,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // Align content to start
                  children: [
                    const Text(
                      '축하해요\n팜클럽을 끝까지 완주했어요!',
                      style: FarmusThemeTextStyle.darkSemiBold20,
                      textAlign: TextAlign.start, // Align text to the start
                    ),
                    const Text(
                      '앞으로의 홈파밍 여정도 팜어스와 함께해요!',
                      style: FarmusThemeTextStyle.gray2Medium14,
                      textAlign: TextAlign.start, // Align text to the start
                    ),
                    myFarmclubSuccessList.when(
                      data: (data) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 40.0),
                          child: FarmclubSuccessInfo(
                            myFarmclubSuccessList: data,
                            selectedFarmclubId: selectedFarmclubId,
                          ),
                        );
                      },
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      error: (error, stack) => Center(
                        child: Text('Error: $error'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: PrimaryColorButton(
                        enabled: true,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MainScreen(
                                selectedIndex: 0,
                              ),
                            ),
                          );
                        },
                        buttonChild: const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: 8),
                              Text(
                                "팜클럽 마치기",
                                style: FarmusThemeTextStyle.whiteSemiBold15,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
