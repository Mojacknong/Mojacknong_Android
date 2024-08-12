import 'dart:io';

import 'package:farmus/model/my_page/my_page_nickename_model.dart';
import 'package:farmus/model/my_page/my_page_profile_model.dart';
import 'package:farmus/view/on_boarding/component/on_boarding_nickname_text_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../common/bottom_sheet/primary_action_sheet.dart';
import '../../../common/button/primary_color_button.dart';
import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';
import '../../../view_model/my_page/my_page_info_provider.dart';
import '../../../view_model/my_page/notifier/my_page_user_nickname_model_notifier.dart';
import '../../../view_model/my_page/notifier/my_page_user_profile_model_notifier.dart';
import '../../../view_model/on_boarding/on_boarding_provider.dart';
import '../../main/main_screen.dart';

class MyPageProfile extends ConsumerStatefulWidget {
  const MyPageProfile({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyPageProfileState();
}

class _MyPageProfileState extends ConsumerState<MyPageProfile> {
  XFile? file;

  Future<void> _pickGalleryImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        file = pickedFile;
        ref
            .read(onBoardingProfileSetProvider.notifier)
            .updateProfileImage(pickedFile);
      });
    }
  }

  Future<void> _pickCameraImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        file = pickedFile;
        ref
            .read(onBoardingProfileSetProvider.notifier)
            .updateProfileImage(pickedFile);
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

  Future<void> _saveProfileWithImage(String displayNickname) async {
    final profile = ref.read(onBoardingProfileSetProvider);

    final nickname = profile.nickname ?? displayNickname;

    if (profile.profileImage == null) {
      await ref
          .read(myPageUserNicknameProfileModelNotifierProvider.notifier)
          .postUserNickname(
            MyPageNickenameModel(nickname: nickname),
          );
    } else if (profile.profileImage!.path.isEmpty) {
      await ref
          .read(myPageUserNicknameProfileModelNotifierProvider.notifier)
          .postUserNickname(
            MyPageNickenameModel(nickname: nickname),
          );
    } else {
      final imageFile = File(profile.profileImage!.path);

      await ref
          .read(myPageUserProfileModelNotifierProvider.notifier)
          .postUserProfile(
            MyPageProfileModel(
              image: imageFile,
              nickname: nickname,
            ),
          );
    }

    ref.refresh(myPageInfoModelProvider);

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => const MainScreen(selectedIndex: 3),
      ),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final myPageInfoAsyncValue = ref.watch(myPageInfoModelProvider);
    final profile = ref.watch(onBoardingProfileSetProvider);
    final isSpecial = ref.watch(onBoardingSpecialCharactersProvider);

    file = profile.profileImage;
    final nickname = profile.nickname;
    final hasSpecialCharacters = isSpecial;

    return Scaffold(
      body: myPageInfoAsyncValue.when(
        data: (myPageInfo) {
          final userImageUrl = myPageInfo.userImageUrl;
          final displayNickname = myPageInfo.nickName;

          return Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(125, 8, 125, 8),
                          child: AspectRatio(
                            aspectRatio: 1.0,
                            child: Container(
                              decoration: const ShapeDecoration(
                                color: FarmusThemeColor.gray5,
                                shape: CircleBorder(),
                              ),
                              child: (file == null)
                                  ? GestureDetector(
                                      onTap: () => _showActionSheet(context),
                                      child: ClipOval(
                                        child: Image.network(
                                          userImageUrl,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
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
                          initialValue: displayNickname,
                          errorText:
                              hasSpecialCharacters ? "특수문자는 입력할 수 없어요" : null,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: PrimaryColorButton(
                        text: "수정완료",
                        onPressed: () async {
                          final profile =
                              ref.read(onBoardingProfileSetProvider);

                          await _saveProfileWithImage(displayNickname);
                        },
                        enabled: (file?.path.isNotEmpty ?? false) ||
                            (nickname?.isNotEmpty ?? false) && !isSpecial,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
