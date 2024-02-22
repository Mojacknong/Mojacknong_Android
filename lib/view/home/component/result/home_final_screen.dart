import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mojacknong_android/common/farmus_theme_data.dart';
import 'package:mojacknong_android/view/community/community_screen.dart';
import 'package:mojacknong_android/view/home/component/result/home_final_apbar.dart';
import 'package:mojacknong_android/view/home/component/result/home_final_controller.dart';
import 'package:mojacknong_android/view/home/component/result/home_final_dialog.dart';
import 'package:mojacknong_android/view/home/component/result/home_final_first.dart';
import 'package:mojacknong_android/view/home/component/result/home_final_progess_bar.dart';
import 'package:mojacknong_android/view/home/component/result/home_final_second.dart';
import 'package:mojacknong_android/view/home/component/result/home_final_third.dart';
import 'package:mojacknong_android/view/home/component/result/home_next_botton.dart';
import 'package:mojacknong_android/view/home/component/result/home_text_controller.dart';
import 'package:mojacknong_android/view/main/main_screen.dart';
import 'package:mojacknong_android/view/on_boarding/component/previous_button.dart';

class HomeFinalScreen extends StatefulWidget {
  const HomeFinalScreen({Key? key}) : super(key: key);

  @override
  State<HomeFinalScreen> createState() => _HomeFinalScreenState();
}

class _HomeFinalScreenState extends State<HomeFinalScreen> {
  int _currentPage = 1;
  String title = "채소를 삭제하는 이유를 알려주세요";
  String description = "채소를 삭제하면 내 텃밭이 사라져요";
  late Widget _currentWidget;
  bool isLastPage = false;
  final HomeFinalController _homeFinalController =
      Get.put(HomeFinalController());
  final HomeTextController homeTextController = Get.put(HomeTextController());

  bool isBoxesPage1() {
    return _homeFinalController.isTaped1.value ||
        _homeFinalController.isTaped2.value;
  }

  bool isBoxesPage2() {
    return _homeFinalController.isTaped3.value ||
        _homeFinalController.isTaped4.value;
  }

  bool isBoxesPage3() {
    return _homeFinalController.isTaped5.value ||
        _homeFinalController.isTaped6.value;
  }

  @override
  void initState() {
    super.initState();
    _currentWidget = const HomeFinalFirst();
  }

  void _isButtonPress(bool isNext) {
    setState(() {
      if (isNext) {
        if (_currentPage == 1) {
          if (_homeFinalController.isTaped2.value) {
            _currentPage = 3;
            _currentWidget = const HomeFinalThird();
            title = "채소 재배에 어려움을 겪고 있나요?\n커뮤니티에서 도움을 얻을 수 있어요";
            description = "홈파밍을 도중에 중단하는 경우\n채소 히스토리에 등록되지 않아요";
          } else if (_homeFinalController.isTaped1.value) {
            _currentPage = 2;
            _currentWidget = const HomeFinalSecond();
            title = "채소 히스토리에 등록될\n재배 결과를 기록해주세요!";
            description = "마이페이지에서 나중에 등록할 수 있어요";
          }
        } else {
          if (_homeFinalController.isTaped1.value) {
            _currentPage = 2;
            _currentWidget = const HomeFinalSecond();
            title = "채소 히스토리에 등록될\n재배 결과를 기록해주세요!";
            description = "마이페이지에서 나중에 등록할 수 있어요";
          }
        }
      } else {
        if (_currentPage == 3) {
          _currentPage = 1;
          _currentWidget = const HomeFinalFirst();
          title = "채소를 삭제하는 이유를 알려주세요";
          description = "채소를 삭제하면 내 텃밭이 사라져요";
        } else if (_currentPage == 2) {
          _currentPage = 1;
          _currentWidget = const HomeFinalFirst();
          title = "채소를 삭제하는 이유를 알려주세요";
          description = "채소를 삭제하면 내 텃밭이 사라져요";
        }
      }
      isLastPage = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: const HomeFinalAppBar(),
        backgroundColor: FarmusThemeData.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: HomeFinalProgressBar(currentPage: _currentPage),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(title,
                  style: const TextStyle(
                      fontSize: 20,
                      fontFamily: "Pretendard",
                      color: FarmusThemeData.dark),
                  textAlign: TextAlign.start),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(description,
                  style: const TextStyle(
                      fontSize: 14,
                      fontFamily: "Pretendard",
                      color: FarmusThemeData.dark),
                  textAlign: TextAlign.start),
            ),
            Expanded(child: _currentWidget),
            Obx(
              () => Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (_currentPage != 1 && _currentPage > 1)
                      Expanded(
                          child: PreviousButton(
                              onPressed: () => _isButtonPress(false))),
                    Expanded(
                      child: HomeNextButton(
                        text: _currentPage == 1
                            ? "다음"
                            : (_currentPage == 2 &&
                                    homeTextController
                                        .contentValue.value.isNotEmpty)
                                ? "완료"
                                : (_currentPage == 3 ? "다음" : "나중에 등록하기"),
                        onPressed: () {
                          if (_currentPage == 2) {
                            showHomeFinalDialog(context);
                          } else if (_currentPage == 3) {
                            if (_homeFinalController.isTaped3.value) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                           CommunityScreen())); //커뮤니티 화면으로 이동해야함 (예시 페이지)
                            } else if (_homeFinalController.isTaped4.value) {
                              showHomeFinalDialog(context);
                            }
                          } else {
                            _isButtonPress(true);
                          }
                        },
                        enabled: _currentPage == 1
                            ? isBoxesPage1()
                            : (_currentPage == 3 ? isBoxesPage2() : true),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void showHomeFinalDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierColor: FarmusThemeData.grey1,
    builder: (BuildContext context) {
      return const HomeFinalDialog();
    },
  );
}
