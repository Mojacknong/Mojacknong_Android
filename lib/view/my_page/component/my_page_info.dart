import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:farmus/common/theme/farmus_theme_text_style.dart';
import 'package:farmus/view/my_page/my_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../view_model/my_page/my_page_info_provider.dart';
import '../../../view_model/on_boarding/on_boarding_provider.dart';

class MyPageInfo extends ConsumerStatefulWidget {
  const MyPageInfo({super.key});

  @override
  ConsumerState<MyPageInfo> createState() => _MyPageInfoState();
}

class _MyPageInfoState extends ConsumerState<MyPageInfo> {
  XFile? file;

  @override
  Widget build(BuildContext context) {
    file = ref.read(onBoardingProfileSetProvider).profileImage;
    final myPageInfoAsyncValue = ref.watch(myPageInfoModelProvider);

    return Scaffold(
      body: myPageInfoAsyncValue.when(
        data: (myPageInfo) {
          final nickName = myPageInfo.nickName;
          final dDay = myPageInfo.dday;
          final userImageUrl = myPageInfo.userImageUrl;

          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyProfileScreen(),
                    ),
                  );
                },
                child: SizedBox(
                  height: 100,
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 16.0,
                        ),
                        child: Container(
                          width: 68,
                          height: 68,
                          decoration: ShapeDecoration(
                            color: FarmusThemeColor.gray5,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                width: 0.60,
                                color: FarmusThemeColor.gray4,
                              ),
                              borderRadius: BorderRadius.circular(60),
                            ),
                          ),
                          child: ClipOval(
                            child: Image.network(
                              userImageUrl,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return const Icon(Icons.error);
                              },
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              nickName,
                              style: FarmusThemeTextStyle.darkSemiBold19,
                            ),
                          ),
                          Text(
                            "팜어스와 함께한지 +${dDay}일",
                            style: FarmusThemeTextStyle.gray1Medium15,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(thickness: 1, color: FarmusThemeColor.gray4),
              const SizedBox(
                height: 16,
              ),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) {
          print('Error in FutureBuilder: $err');
          return Center(
            child: Text('Error: $err'),
          );
        },
      ),
    );
  }
}
