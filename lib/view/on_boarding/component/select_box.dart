import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mojacknong_android/common/bouncing.dart';
import 'package:mojacknong_android/common/farmus_theme_data.dart';
import 'package:mojacknong_android/view_model/controllers/onboarding_controller.dart';

class SelectBox extends StatelessWidget {
  final String title;
  final String content;
  final RxBool isSelected;
  final Function() selectBox;

  const SelectBox({
    Key? key,
    required this.title,
    required this.content,
    required this.isSelected,
    required this.selectBox,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OnboardingController onboardingController = Get.put(OnboardingController());

    return Obx(
      () {
        Color backgroundColor = isSelected.value
            ? FarmusThemeData.greenLight
            : FarmusThemeData.white;
        Color titleColor =
            isSelected.value ? FarmusThemeData.dark : FarmusThemeData.dark;
        Color contentColor =
            isSelected.value ? FarmusThemeData.grey1 : FarmusThemeData.grey1;

        return Bouncing(
          onPress: () {},
          child: GestureDetector(
            onTap: selectBox,
            child: Container(
              width: double.infinity,
              height: 82,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  width: 1,
                  color: isSelected.value
                      ? FarmusThemeData.green1
                      : FarmusThemeData.grey4,
                ),
              ),
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Pretendard",
                      fontWeight: FontWeight.bold,
                      color: titleColor,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    content,
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Pretendard",
                      color: contentColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
