import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

import '../../common/farmus_theme_color.dart';
import '../../common/farmus_theme_text_style.dart';
import '../../view_model/on_boarding/on_boarding_provider.dart';
import 'component/on_boarding_nickname.dart';

class OnBoardingFirst extends ConsumerStatefulWidget {
  const OnBoardingFirst({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _OnBoardingFirstState();
}

class _OnBoardingFirstState extends ConsumerState<OnBoardingFirst> {
  XFile? file;

  Future<void> _pickImage() async {
    ImagePicker().pickImage(source: ImageSource.gallery).then((value) {
      if (value != null) {
        setState(() {
          file = value;
          ref.read(onBoardingProvider.notifier).updateProfileImage(value.path);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
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
                  child: Text(
                    "반가워요!\n프로필을 설정해볼까요?",
                    style: FarmusThemeTextStyle.darkSemiBold20,
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: Container(
                    width: 110,
                    height: 110,
                    decoration: const ShapeDecoration(
                      color: FarmusThemeColor.grey5,
                      shape: OvalBorder(),
                    ),
                    child: (file == null)
                        ? Stack(
                            children: [
                              Center(
                                child: GestureDetector(
                                  onTap: _pickImage,
                                  child: SvgPicture.asset(
                                      "assets/image/ic_camera.svg"),
                                ),
                              )
                            ],
                          )
                        : GestureDetector(
                            onTap: _pickImage,
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
                  child: OnBoardingNickname(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
