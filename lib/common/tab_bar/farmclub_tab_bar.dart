import 'package:farmus/common/tab_bar/primary_tab_bar.dart';
import 'package:farmus/model/my_farmclub/my_farmclub_info_model.dart';
import 'package:farmus/view/farmclub/component/farmclub_step.dart';
import 'package:farmus/view/farmclub/component/farmclub_step_empty.dart';
import 'package:flutter/material.dart';

class FarmclubTabBar extends StatelessWidget {
  final MyFarmclubInfoModel farmclubInfo;

  const FarmclubTabBar({super.key, required this.farmclubInfo});

  @override
  Widget build(BuildContext context) {
    final List<StepModel> steps = farmclubInfo.steps;

    int currentStepIndex =
        (farmclubInfo.daysSinceStart >= 0) ? farmclubInfo.daysSinceStart : 0;

    final List<StepModel> previousSteps =
        (currentStepIndex > 0) ? steps.sublist(0, currentStepIndex) : [];
    final List<StepModel> currentSteps =
        (farmclubInfo.daysSinceStart >= 0) ? [steps[currentStepIndex]] : [];
    final List<StepModel> nextSteps = (currentStepIndex < steps.length - 1)
        ? steps.sublist(currentStepIndex + 1)
        : [];

    Widget buildStepView(List<StepModel> stepModels) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: stepModels.map((step) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: FarmclubStep(
                  step: step,
                ),
              );
            }).toList(),
          ),
        ),
      );
    }

    return PrimaryTabBar(
      tab: const ['현재', '이전', '다음'],
      tabView: [
        if (currentSteps.isNotEmpty)
          buildStepView(currentSteps)
        else
          const FarmclubStepEmpty(isLast: false),
        if (previousSteps.isNotEmpty)
          buildStepView(previousSteps)
        else
          const FarmclubStepEmpty(isLast: false),
        if (nextSteps.isNotEmpty)
          buildStepView(nextSteps)
        else
          const FarmclubStepEmpty(isLast: true),
      ],
      tabViewHeights: 368,
    );
  }
}
