import 'package:farmus/common/app_bar/primary_app_bar.dart';
import 'package:farmus/common/button/primary_color_button.dart';
import 'package:farmus/view/main/main_screen.dart';
import 'package:farmus/view/on_boarding/component/main_sub_title.dart';
import 'package:farmus/view_model/on_boarding/on_boarding_finish_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnBoardingFinishScreen extends ConsumerWidget {
  const OnBoardingFinishScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncNickName = ref.watch(onBoardingFinishNotifierProvider);

    ref.read(onBoardingFinishNotifierProvider.notifier).onBoardingComplete();

    return Scaffold(
      appBar: PrimaryAppBar(
        leading: Container(),
        title: null,
      ),
      body: asyncNickName.when(
        data: (nickName) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: MainSubTitle(
                mainText: "$nickName 님의 가입이 완료되었어요!",
                subText: "홈에서 추천 채소를 확인해보세요.",
              ),
            ),
            Expanded(
              child: Center(
                child: Image.asset(
                  "assets/image/img_on_board_finish.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 64.0),
              child: SizedBox(
                width: double.infinity,
                child: PrimaryColorButton(
                  text: "시작하기",
                  fontPadding: 16.0,
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainScreen(
                          selectedIndex: 0,
                        ),
                      ),
                    );
                  },
                  enabled: true,
                ),
              ),
            ),
          ],
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
