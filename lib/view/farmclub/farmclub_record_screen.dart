import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mojacknong_android/common/farmus_theme_data.dart';
import 'package:mojacknong_android/common/primary_app_bar.dart';
import 'package:mojacknong_android/view/farmclub/component/record/record_picture.dart';
import 'package:mojacknong_android/view/farmclub/component/record/record_profile.dart';
import 'package:mojacknong_android/view_model/controllers/farmclub/farmclub_controller.dart';
import 'package:mojacknong_android/view_model/controllers/farmclub/farmclub_diary_controller.dart';

class FarmclubRecordScreen extends StatefulWidget {
  FarmclubRecordScreen({super.key});

  @override
  State<FarmclubRecordScreen> createState() => _FarmclubRecordScreenState();
}

class _FarmclubRecordScreenState extends State<FarmclubRecordScreen> {
  final FarmclubController controller = Get.put(FarmclubController());
  final FarmclubDiaryController _diaryController =
      Get.put(FarmclubDiaryController());

  @override
  void initState() {
    super.initState();
    _diaryController.getFarmclubDiary(
      controller
          .myFarmclubState[controller.selectedFarmclubIndex.toInt()].challengeId
          .toInt(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(
        title: "함께 기록해요",
      ),
      backgroundColor: FarmusThemeData.white,
      body: FutureBuilder(
        future: _diaryController.getFarmclubDiary(
          controller.myFarmclubState[controller.selectedFarmclubIndex.toInt()]
              .challengeId
              .toInt(),
        ),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(
                color: FarmusThemeData.brown,
              ),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else {
            final diaryList = _diaryController.farmclubDiaryList;

            return ListView.builder(
              itemCount: diaryList.length,
              itemBuilder: (context, index) {
                final diary = diaryList[index];

                return Column(
                  children: [
                    RecordProfile(
                      profile: diary.profileImage ?? "",
                      nickname: diary.nickName,
                      postTime: diary.date,
                    ),
                    SizedBox(height: 12),
                    RecordPicture(
                      like: 0.obs,
                      image: diary.image,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          diary.content,
                          style: FarmusThemeData.darkStyle14,
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          }
        },
      ),
    );
  }
}
