import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mojacknong_android/common/bouncing.dart';
import 'package:mojacknong_android/common/custom_app_bar.dart';
import 'package:mojacknong_android/common/farmus_theme_data.dart';
import 'package:mojacknong_android/view/farmclub/component/button_brown.dart';
import 'package:mojacknong_android/view/farmclub/component/button_white.dart';
import 'package:mojacknong_android/view/farmclub/component/challenge/challenge_feed.dart';
import 'package:mojacknong_android/view/farmclub/component/farmclub_content.dart';
import 'package:mojacknong_android/view/farmclub/component/farmclub_init.dart';
import 'package:mojacknong_android/view/farmclub/component/farmclub_title.dart';
import 'package:mojacknong_android/view/farmclub/component/farmclub_title_with_divider.dart';
import 'package:mojacknong_android/view/farmclub/component/group/group_rate.dart';
import 'package:mojacknong_android/view/farmclub/component/my_farmclub_info.dart';
import 'package:mojacknong_android/view/farmclub/component/my_farmclub_list.dart';
import 'package:mojacknong_android/view/farmclub/component/record/record_init.dart';
import 'package:mojacknong_android/view/farmclub/farmclub_auth_screen.dart';
import 'package:mojacknong_android/view/farmclub/farmclub_explore_screen.dart';
import 'package:mojacknong_android/view/farmclub/my_farmclub_mission_screen.dart';
import 'package:mojacknong_android/view_model/controllers/farmclub/farmclub_auth_controller.dart';
import 'package:mojacknong_android/view_model/controllers/farmclub/farmclub_controller.dart';
import 'package:mojacknong_android/view_model/controllers/farmclub/farmclub_diary_controller.dart';

import '../../model/farmclub_mine_detail.dart';
import 'component/record/record_feed.dart';

class FarmclubScreen extends StatefulWidget {
  bool isFarmclub;

  FarmclubScreen({super.key, required this.isFarmclub});

  @override
  State<FarmclubScreen> createState() => _FarmclubScreenState();
}

class _FarmclubScreenState extends State<FarmclubScreen> {
  FarmclubController controller = Get.put(FarmclubController());
  FarmclubAuthController _authController = Get.put(FarmclubAuthController());

  @override
  void initState() {
    super.initState();
    controller.getMyFarmclub();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: FarmusThemeData.white,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "나의 팜클럽",
                  style: FarmusThemeData.darkStyle16,
                ),
                Bouncing(
                  onPress: () {},
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const FarmclubExploreScreen();
                          },
                        ),
                      );
                    },
                    child: SvgPicture.asset(
                      "assets/image/ic_search.svg",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Obx(() {
              // 로딩 중이면 로딩 화면을 표시
              if (controller.isLoading.isTrue) {
                return Center(
                  child: CircularProgressIndicator(
                    color: FarmusThemeData.brown,
                  ),
                );
              }

              final FarmclubMineDetail? farmclubInfo =
                  controller.farmclubInfo.value;

              print("가입: ${controller.farmclubInfo.value!.isRegistered}");


              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    MyFarmclubList(
                      farmclubData: controller.myFarmclubState,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    FarmclubTitle(
                      title: farmclubInfo!.challengeName,
                      veggie: farmclubInfo!.veggieName,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    FarmclubContent(content: farmclubInfo.challengeDescription),
                    MyFarmclubInfo(
                      level: farmclubInfo.difficulty,
                      now: farmclubInfo.currentUser.toString(),
                      max: farmclubInfo.maxUser.toString(),
                      status: farmclubInfo.status.toString(),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    GroupRate(farmclubInfo: farmclubInfo),
                    const SizedBox(
                      height: 16,
                    ),
                    const Divider(
                      thickness: 12,
                      color: FarmusThemeData.dividerBackground,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const FarmclubTitleWithDivider(title: "함께 도전해요"),
                    ChallengeFeed(
                      farmclubInfo: controller.farmclubInfo.value!,
                      farmclubMine: controller.myFarmclubState[
                          controller.selectedFarmclubIndex.toInt()],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Divider(
                      thickness: 12,
                      color: FarmusThemeData.dividerBackground,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const FarmclubTitleWithDivider(title: "함께 기록해요"),
                    controller.farmclubDiaryList.isNotEmpty
                        ? RecordFeed(
                            farmclubInfo: controller.farmclubInfo.value!,
                            farmclubMine: controller.myFarmclubState[
                                controller.selectedFarmclubIndex.toInt()]):
                    RecordInit(),
                    const SizedBox(
                      height: 12,
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: controller.myFarmclubState.isNotEmpty
          ? Container(
              padding: const EdgeInsets.all(8),
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: ButtonWhite(
                        text: "내 미션",
                        onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const MyFarmclubMissionScreen(
                                  detailId: '',
                                );
                              },
                            ),
                          );
                        }),
                  ),
                  Expanded(
                    flex: 2,
                    child: ButtonBrown(
                      text: "미션 인증하기",
                      enabled: RxBool(true),
                      onPress: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return FarmclubAuthScreen(
                                  farmclubData: controller.myFarmclubState);
                            },
                          ),
                        );

                        // 업로드 성공 후 새로고침
                        if (_authController.missionUploaded.value) {
                          _authController.missionUploaded.value = false; // 초기화
                          super.initState(); // FarmclubScreen 새로고침
                        }
                      },
                    ),
                  ),
                ],
              ),
            )
          : null,
    );
  }
}
