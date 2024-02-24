import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mojacknong_android/common/farmus_theme_data.dart';
import 'package:mojacknong_android/repository/onboarding_repository.dart';
import 'package:mojacknong_android/view_model/controllers/onboarding_controller.dart';

class OnboardingFinish extends StatefulWidget {
  const OnboardingFinish({Key? key}) : super(key: key);

  @override
  _OnboardingFinishState createState() => _OnboardingFinishState();
}

class _OnboardingFinishState extends State<OnboardingFinish> {
  OnboardingController _controller = Get.put(OnboardingController());

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _loadData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator(color: FarmusThemeData.brown,));
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          return _buildUI();
        }
      },
    );
  }

  Future<void> _loadData() async {
    await patchComplete();
    await postCropHistroy();
  }

  Widget _buildUI() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    SvgPicture.asset(
                      "assets/image/logo_onboarding.svg",
                      width: 256,
                      height: 256,
                    ),
                    Column(
                      children: [
                        SvgPicture.asset(
                          "assets/image/logo_farmus.svg",
                          width: 85.91,
                          height: 19,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Text(
                          "성취감과 즐거움을 느낄 수 있도록\n파머님의 홈파밍 여정에 함께할게요",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: FarmusThemeData.primary,
                            fontSize: 13,
                            fontFamily: "Pretendard",
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<String?> patchComplete() async {
    await OnboardingRepository.patchComplete();
  }

  Future<String?> postCropHistroy() async {
    await OnboardingRepository.postCropHistory();
  }
}
