import 'dart:io';

import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/common/bottom_sheet/primary_action_sheet.dart';
import 'package:farmus/common/button/on_boarding_button.dart';
import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/my_page/my_page_screen.dart';
import 'package:farmus/view/on_boarding/component/on_boarding_nickname_text_input.dart';
import 'package:farmus/view_model/on_boarding/on_boarding_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

class MyPageProfileScreen extends ConsumerStatefulWidget {
  const MyPageProfileScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MyPageProfileScreenState();
}

class _MyPageProfileScreenState extends ConsumerState<MyPageProfileScreen> {
  XFile? file;

  Future<void> _pickGalleryImage() async {
    ImagePicker().pickImage(source: ImageSource.gallery).then((value) {
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

  Future<void> _pickCameraImage() async {
    ImagePicker().pickImage(source: ImageSource.camera).then((value) {
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

  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => PrimaryActionSheet(
        title: "프로필 사진",
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            onPressed: () {
              _pickGalleryImage();
              Navigator.pop(context);
            },
            child: const Text(
              "앨범에서 사진 선택",
              style: FarmusThemeTextStyle.dark2Medium15,
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              // _pickCameraImage();
              Navigator.pop(context);
            },
            child: const Text(
              "현재 사진 삭제",
              style: FarmusThemeTextStyle.redMedium15,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final profile = ref.watch(onBoardingProfileProvider);
    final isSpecial = ref.watch(onBoardingSpecialCharactersProvider);
    final nickname = ref.read(onBoardingProfileProvider).nickname;
    final hasSpecialCharacters = ref.watch(onBoardingSpecialCharactersProvider);

    String nextButtonText = "수정완료";
    bool enabled = false;
    enabled = profile.isProfileComplete && !isSpecial;
    return Scaffold(
      appBar: const BackLeftTitleAppBar(
        title: "프로필",
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                      maxLength: 10,
                      hintText: '파머',
                      errorText:
                          hasSpecialCharacters ? "특수문자는 입력할 수 없어요" : null,
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(
                          color: FarmusThemeColor.gray4,
                        ),
                      ),
                      errorStyle: const TextStyle(
                        color: FarmusThemeColor.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          OnBoardingButton(
            text: nextButtonText,
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyPageScreen(),
                ),
              );
            },
            enabled: enabled,
            textColor:
                enabled ? FarmusThemeColor.white : FarmusThemeColor.gray3,
            backgroundColor:
                enabled ? FarmusThemeColor.primary : FarmusThemeColor.gray4,
            borderColor: FarmusThemeColor.white,
          ),
        ],
      ),
    );
  }
}
