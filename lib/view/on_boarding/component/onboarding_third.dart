import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mojacknong_android/view/on_boarding/component/select_box.dart';
import 'package:mojacknong_android/view_model/controllers/onboarding_controller.dart';

class OnboardingThird extends StatefulWidget {
  const OnboardingThird({Key? key}) : super(key: key);

  @override
  _OnboardingThird createState() => _OnboardingThird();
}

class _OnboardingThird extends State<OnboardingThird> {
  final OnboardingController _onboardingController =
      Get.put(OnboardingController());

  late int time;

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
          GestureDetector(
            onTap: () {
              _onboardingController.selectBox4();
            },
            child: SelectBox(
              title: "많은 시간을 홈파밍에 쓸 수 있어요",
              content: "하루 1시간",
              isSelected: _onboardingController.isSelected4,
              selectBox: () {
                _onboardingController.selectBox4();
              },
            ),
          ),
          GestureDetector(
            onTap: () {
              _onboardingController.selectBox5();
            },
            child: SelectBox(
              title: "아침 저녁에는 홈파밍을 할 수 있어요",
              content: "하루 10~30분",
              isSelected: _onboardingController.isSelected5,
              selectBox: () {
                _onboardingController.selectBox5();
              },
            ),
          ),
          SelectBox(
            title: "바빠서 홈파밍을 할 시간이 별로 없어요",
            content: "하루 10분",
            isSelected: _onboardingController.isSelected6,
            selectBox: () {
              _onboardingController.selectBox6();
            },
          ),
        ],
      ),
    );
  }
}
