import 'dart:io';

import 'package:farmus/common/button/primary_color_button.dart';
import 'package:farmus/view/my_page/my_page_screen.dart';
import 'package:farmus/view/on_boarding/component/on_boarding_nickname_text_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

import '../../../common/bottom_sheet/primary_action_sheet.dart';
import '../../../common/theme/farmus_theme_color.dart';
import '../../../common/theme/farmus_theme_text_style.dart';
import '../../../view_model/on_boarding/on_boarding_provider.dart';

class MyPageProfile extends ConsumerStatefulWidget {
  const MyPageProfile({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyPageProfileState();
}

class _MyPageProfileState extends ConsumerState<MyPageProfile> {
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

  @override
  Widget build(BuildContext context) {
    file = ref.read(onBoardingProfileProvider).profileImage;
    final nickname = ref.read(onBoardingProfileProvider).nickname;
    final hasSpecialCharacters = ref.watch(onBoardingSpecialCharactersProvider);

    String nextButtonText = "수정완료";

    bool enabled = profile.isProfileComplete && !isSpecial;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/image/ic_arrow_left.svg',
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "프로필",
          style: TextStyle(fontSize: 16, color: FarmusThemeColor.dark),
        ),
        centerTitle: false,
        backgroundColor: FarmusThemeColor.white,
        elevation: 0.0,
        bottomOpacity: 0.0,
        scrolledUnderElevation: 0,
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
                      // 이미지 선택을 하지 않으면 카메라 아이콘 설정
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
                          // 이미지 선택하면 해당 이미지로 설정
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
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: OnBoardingNicknameTextInput(),
                  ),
                ],
              ),
            ),
          ),
          PrimaryColorButton(
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
          ),
        ],
      ),
    );
  }
}
