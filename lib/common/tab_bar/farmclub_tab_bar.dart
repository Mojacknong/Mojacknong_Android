import 'package:farmus/common/tab_bar/primary_tab_bar.dart';
import 'package:farmus/model/my_farmclub/my_farmclub_info_model.dart';
import 'package:farmus/view/farmclub/component/farmclub_step.dart';
import 'package:farmus/view/farmclub/component/farmclub_step_empty.dart';
import 'package:farmus/view/farmclub/component/farmclub_step_tip.dart'; // 추가
import 'package:flutter/material.dart';

class FarmclubTabBar extends StatelessWidget {
  final MyFarmclubInfoModel farmclubInfo;

  const FarmclubTabBar({super.key, required this.farmclubInfo});

  @override
  Widget build(BuildContext context) {
    final List<StepModel> steps = farmclubInfo.steps;
    final int currentStepIndex = farmclubInfo.currentStep - 1;

    final List<StepModel> currentSteps = [steps[currentStepIndex]];

    final List<StepModel> previousSteps =
        (currentStepIndex > 0) ? steps.sublist(0, currentStepIndex) : [];
    final List<StepModel> nextSteps = (currentStepIndex < steps.length - 1)
        ? steps.sublist(currentStepIndex + 1)
        : [];

    Widget buildStepView(List<StepModel> stepModels, {bool addTip = false}) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...stepModels.map((step) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: FarmclubStep(
                    wholeMember: farmclubInfo.wholeMemberCount,
                    step: step,
                    farmclubInfo: farmclubInfo,
                  ),
                );
              }),
              if (addTip) FarmclubStepTip(tip: farmclubInfo.advice),
            ],
          ),
        ),
      );
    }

    Widget buildTabView(List<StepModel> steps,
        {bool isLast = false, bool addTip = false}) {
      return steps.isNotEmpty
          ? buildStepView(steps, addTip: addTip)
          : FarmclubStepEmpty(isLast: isLast);
    }

    return PrimaryTabBar(
      tab: const ['현재', '이전', '다음'],
      tabView: [
        buildTabView(currentSteps, addTip: true),
        buildTabView(previousSteps),
        buildTabView(nextSteps, isLast: true),
      ],
      tabViewHeights: 368,
    );
  }
}