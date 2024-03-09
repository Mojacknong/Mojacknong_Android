import 'package:farmus/view/on_boarding/component/select_box.dart';
import 'package:farmus/view/on_boarding/component/on_boarding_title.dart';
import 'package:flutter/material.dart';

class OnBoardingSecond extends StatelessWidget {
  const OnBoardingSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: OnBoardingTitle(
                    mainText: "홈파밍을 하는 이유가 무엇인가요?",
                    subText: "이유에 맞는 응원 메시지를 전해드릴게요. (복수 선택)",
                  ),
                ),
                SizedBox(height: 16),
                SelectBox(
                  title: "title",
                  content: "content",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
