import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/common/button/primary_color_button.dart';
import 'package:farmus/view/main/main_screen.dart';
import 'package:farmus/view/my_page/component/my_page_profile.dart';
import 'package:farmus/view_model/on_boarding/on_boarding_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyProfileScreen extends ConsumerWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(onBoardingProfileSetProvider);
    final isSpecial = ref.watch(onBoardingSpecialCharactersProvider);

    String nextButtonText = "수정완료";
    bool enabled = false;
    enabled = profile.isProfileComplete && !isSpecial;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: const BackLeftTitleAppBar(
          title: "프로필",
        ),
        resizeToAvoidBottomInset: true,
        body: Column(
          children: [
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: MyPageProfile(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: PrimaryColorButton(
                      text: nextButtonText,
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainScreen(
                                    selectedIndex: 3,
                                  )),
                        );
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
    );
  }
}
