import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

import '../../common/farmus_theme_color.dart';
import '../../common/farmus_theme_text_style.dart';
import '../../view_model/on_boarding/on_boarding_provider.dart';
import 'component/on_boarding_next_button.dart';

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
    final provider = ref.watch(onBoardingProvider.notifier);

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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextFormField(
                    maxLength: 10,
                    decoration: InputDecoration(
                      hintText: "파머",
                      hintStyle: const TextStyle(
                        color: FarmusThemeColor.grey3,
                        fontFamily: "Pretendard",
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(
                          color: FarmusThemeColor.grey4,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(
                          color: FarmusThemeColor.grey4,
                        ),
                      ),
                      errorText: provider.hasSpecialCharacters
                          ? "특수문자는 입력할 수 없어요"
                          : null,
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(
                          color: FarmusThemeColor.grey4,
                        ),
                      ),
                      errorStyle: const TextStyle(
                        color: FarmusThemeColor.red,
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(
                          color: FarmusThemeColor.grey4,
                        ),
                      ),
                    ),
                    onChanged: (value) {
                      provider.updateNickname(value);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ProviderScope(
            child: Consumer(
              builder: (context, ref, child) {
                return OnBoardingNextButton(
                  text: "다음",
                  onPressed: () {},
                  enabled: provider.isProfileComplete,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
