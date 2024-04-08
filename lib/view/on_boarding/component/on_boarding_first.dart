import 'dart:io';

import 'package:farmus/common/farmus_image_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';
import '../../../view_model/on_boarding/on_boarding_provider.dart';
import 'main_sub_title.dart';
import 'on_boarding_nickname_text_input.dart';

class OnBoardingFirst extends ConsumerStatefulWidget {
  const OnBoardingFirst({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _OnBoardingFirstState();
}

class _OnBoardingFirstState extends ConsumerState<OnBoardingFirst> {
  XFile? file;

  void _showActionSheet(BuildContext context) {
    FarmusImagePicker.showActionSheet(context, (value) {
      if (value != null) {
        setState(() {
          file = value;
          ref
              .read(onBoardingProfileProvider.notifier)
              .updateProfileImage(value);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    file = ref.read(onBoardingProfileProvider).profileImage;
    final nickname = ref.read(onBoardingProfileProvider).nickname;
    final hasSpecialCharacters = ref.watch(onBoardingSpecialCharactersProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: MainSubTitle(
                    mainText: "반가워요!\n프로필을 설정해볼까요?",
                    subText: "",
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: Container(
                    width: 110,
                    height: 110,
                    decoration: const ShapeDecoration(
                      color: FarmusThemeColor.gray5,
                      shape: OvalBorder(),
                    ),
                    child: (file == null)
                        ? Stack(
                            children: [
                              Center(
                                child: GestureDetector(
                                  onTap: () => _showActionSheet(context),
                                  child: SvgPicture.asset(
                                      "assets/image/ic_camera.svg"),
                                ),
                              )
                            ],
                          )
                        : GestureDetector(
                            onTap: () => _showActionSheet(context),
                            child: ClipOval(
                              child: Image.file(
                                File(file!.path),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                  ),
                ),
                const SizedBox(height: 8),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "닉네임",
                    textAlign: TextAlign.start,
                    style: FarmusThemeTextStyle.darkMedium13,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: OnBoardingNicknameTextInput(
                    initialValue: nickname,
                    errorText: hasSpecialCharacters ? "특수문자는 입력할 수 없어요" : null,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
