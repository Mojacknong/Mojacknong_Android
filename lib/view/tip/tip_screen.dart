import 'package:farmus/common/app_bar/delete_app_bar.dart';
import 'package:farmus/model/my_farmclub/farmclub_help_model.dart';
import 'package:farmus/view/tip/component/tip_expand_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/theme/farmus_theme_text_style.dart';
import '../../view_model/home/home_provider.dart';
import '../../view_model/my_farmclub/farmclub_help_notifier.dart';
import 'component/tip_step_text.dart';

class TipScreen extends ConsumerWidget {
  const TipScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedFarmclubId = ref.watch(selectedFarmclubIdProvider);
    final AsyncValue<FarmclubHelpModel> farmclubHelp =
    ref.watch(farmclubHelpModelProvider(selectedFarmclubId));

    return Scaffold(
      appBar: const DeleteAppBar(
        title: '도움말',
      ),
      body: farmclubHelp.when(
        data: (helpModel) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                  child: Text(
                    '대파 키우기',
                    style: FarmusThemeTextStyle.darkSemiBold21,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TipExpandCard(),
                ),
                const SizedBox(
                  height: 32.0,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: helpModel.steps.length,
                  itemBuilder: (context, index) {
                    final step = helpModel.steps[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TipStepText(
                        stepIndex: step.num + 1,
                        stepTitle: step.content,
                        detailStep: {for (var i = 0; i < step.tips.length; i++) i + 1: step.tips[i]},
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
