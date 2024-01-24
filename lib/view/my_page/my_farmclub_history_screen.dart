import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mojacknong_android/common/farmus_theme_data.dart';
import 'package:mojacknong_android/common/primary_app_bar.dart';
import 'package:mojacknong_android/view/farmclub/component/challenge/challenge_step.dart';
import 'package:mojacknong_android/view/farmclub/component/record/record_picture.dart';

import '../../repository/mypage_repository.dart';

class MyFarmclubHistoryScreen extends StatefulWidget {
  final String? detailId;

  const MyFarmclubHistoryScreen({super.key, required this.detailId});

  @override
  State<MyFarmclubHistoryScreen> createState() =>
      _MyFarmclubHistoryScreenState();
}

class _MyFarmclubHistoryScreenState extends State<MyFarmclubHistoryScreen> {
  late String detailId;

  @override
  void initState() {
    super.initState();
    detailId = widget.detailId!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(
        title: "팜클럽 히스토리",
      ),
      backgroundColor: FarmusThemeData.white,
      body: FutureBuilder(
        future: MypageRepository.farmClubHistoryApi(detailId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            print("화면 로딩 중");
            return Center(
              child: CircularProgressIndicator(
                color: FarmusThemeData.brown,
              ),
            );
          } else if (snapshot.hasError) {
            // 에러가 발생한 경우
            return Text('Error: ${snapshot.error}');
          } else {
            return ListView.builder(
              itemCount: snapshot.data?.farmClubHistoryList.length, // 아이템 개수
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        ChallengeStep(
                          step:
                              snapshot.data?.farmClubHistoryList[index].stepNum,
                          title: snapshot
                              .data?.farmClubHistoryList[index].stepName,
                        ),
                        Spacer(),
                        Text(
                          "${snapshot.data!.farmClubHistoryList[index].dateTime}",
                          style: FarmusThemeData.grey2Style13,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    RecordPicture(
                        like: 0.obs,
                        image: snapshot
                            .data?.farmClubHistoryList[index].postImage),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "${snapshot.data?.farmClubHistoryList[index].content}",
                            style: FarmusThemeData.darkStyle14,
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
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
