import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mojacknong_android/repository/onboarding_repository.dart';
import 'package:mojacknong_android/view/on_boarding/component/select_box.dart';
import 'package:mojacknong_android/view_model/controllers/onboarding_controller.dart';

class OnboardingFourth extends StatefulWidget {
  const OnboardingFourth({
    Key? key,
  }) : super(key: key);

  @override
  _OnboardingFourth createState() => _OnboardingFourth();
}

class _OnboardingFourth extends State<OnboardingFourth> {
  OnboardingController _onboardingController = Get.put(OnboardingController());
  String skill = "";

  @override
  void dispose() {
    postLevel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 32,
          ),
          SelectBox(
            title: "홈파밍 입문",
            content: "홈파밍이 아예 처음이에요",
            isSelected: _onboardingController.isSelected7,
            selectBox: () {
              _onboardingController.selectBox7();
            },
          ),
          GestureDetector(
            onTap: () {},
            child: SelectBox(
              title: "홈파밍 초보",
              content: "홈파밍을 해보긴 했지만 채소를 수확하진 못했어요",
              isSelected: _onboardingController.isSelected8,
              selectBox: () {
                _onboardingController.selectBox8();
              },
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: SelectBox(
              title: "홈파밍 중급",
              content: "작물을 잘 관리하고 재배하는 법을 알고 있어요",
              isSelected: _onboardingController.isSelected9,
              selectBox: () {
                _onboardingController.selectBox9();
              },
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: SelectBox(
              title: "홈파밍 고수",
              content: "집에서 키울 수 있는 모든 채소를 섭렵했어요",
              isSelected: _onboardingController.isSelected10,
              selectBox: () {
                _onboardingController.selectBox10();
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<String> postLevel() {
    return OnboardingRepository.postLevel(
        _onboardingController.time.value, _onboardingController.skill.value);
  }
}
