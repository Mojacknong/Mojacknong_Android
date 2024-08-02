import 'dart:io';
import 'package:farmus/view/on_boarding/component/on_boarding_nickname_text_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

import '../../../common/bottom_sheet/primary_action_sheet.dart';
import '../../../common/button/primary_color_button.dart';
import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';
import '../../../model/on_boarding/on_boarding_user_profile_model.dart';
import '../../../view_model/on_boarding/on_boarding_provider.dart';
import '../../../view_model/on_boarding/on_boarding_user_profile.dart';
import '../../main/main_screen.dart';

class MyPageProfile extends ConsumerStatefulWidget {
  const MyPageProfile({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyPageProfileState();
}

class _MyPageProfileState extends ConsumerState<MyPageProfile> {
  XFile? file;

  Future<void> _pickGalleryImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        file = pickedFile;
        ref.read(onBoardingProfileSetProvider.notifier).updateProfileImage(pickedFile);
      });
    }
  }

  Future<void> _pickCameraImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        file = pickedFile;
        ref.read(onBoardingProfileSetProvider.notifier).updateProfileImage(pickedFile);
      });
    }
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
              _pickCameraImage();
              Navigator.pop(context);
            },
            child: const Text(
              "사진 촬영",
              style: FarmusThemeTextStyle.dark2Medium15,
            ),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          isDestructiveAction: true,
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            "취소",
            style: FarmusThemeTextStyle.darkMedium15,
          ),
        ),
      ),
    );
  }

  Future<void> _saveProfile() async {
    final profile = ref.read(onBoardingProfileSetProvider);
    if (file != null || profile.nickname != null) {
      ref
          .read(onBoardingUserProfileModelNotifierProvider
          .notifier)
          .postUserProfile(
        OnBoardingUserProfileModel(
            file: File(profile.profileImage!.path),
            nickName: profile.nickname!),
      );
      print(profile.nickname);
      print(file?.path);
      Navigator.pop(context);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const MainScreen(selectedIndex: 3),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final profile = ref.watch(onBoardingProfileSetProvider);
    final isSpecial = ref.watch(onBoardingSpecialCharactersProvider);
    bool enabled = profile.isProfileComplete && !isSpecial;
    file = ref.read(onBoardingProfileSetProvider).profileImage;
    final nickname = ref.read(onBoardingProfileSetProvider).nickname;
    final hasSpecialCharacters = ref.watch(onBoardingSpecialCharactersProvider);

    if (file != null) {
      print('Current image path: ${file!.path}');
    } else {
      print('No image selected');
    }

    return Column(
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
                            child: SvgPicture.asset("assets/image/ic_camera.svg"),
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
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: PrimaryColorButton(
                          text: "수정완료",
                          onPressed: () async {
                            await _saveProfile();
                          },
                          enabled: enabled,
                        ),
                      ),
                    ],
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
