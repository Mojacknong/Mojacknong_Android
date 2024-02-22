import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mojacknong_android/common/farmus_theme_data.dart';
import 'package:mojacknong_android/view_model/controllers/onboarding_controller.dart';

class NicknameField extends StatefulWidget {
  const NicknameField({super.key});

  @override
  State<NicknameField> createState() => _NicknameFieldState();
}

class _NicknameFieldState extends State<NicknameField> {
  OnboardingController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(
        () => TextFormField(
          controller: _controller.controller,
          maxLength: 10,
          decoration: InputDecoration(
            hintText: "파머",
            hintStyle: const TextStyle(
              color: FarmusThemeData.grey3,
              fontFamily: "Pretendard",
            ),
            errorText: _controller.hasSpecialCharacters.value
                ? '특수문자는 입력할 수 없어요'
                : null,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: FarmusThemeData.grey4,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: FarmusThemeData.grey4,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: FarmusThemeData.grey4,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: FarmusThemeData.grey4,
              ),
            ),
            errorStyle: const TextStyle(
              color: FarmusThemeData.red,
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 12.0,
              horizontal: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
