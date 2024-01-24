import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mojacknong_android/common/farmus_theme_data.dart';
import 'package:mojacknong_android/model/farmclub_diary.dart';
import 'package:mojacknong_android/view/farmclub/component/record/record_picture.dart';
import 'package:mojacknong_android/view/farmclub/component/record/record_profile.dart';

import '../../farmclub_record_screen.dart';

class RecordFeed extends StatefulWidget {
  final FarmclubDiary farmclubDiary;

  const RecordFeed({
    Key? key,
    required this.farmclubDiary,
  }) : super(key: key);

  @override
  State<RecordFeed> createState() => _RecordFeedState();
}

class _RecordFeedState extends State<RecordFeed> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return FarmclubRecordScreen();
                },
              ),
            );
          },
          child: RecordProfile(
            profile: widget.farmclubDiary.profileImage ?? "",
            nickname: widget.farmclubDiary.nickName,
            postTime:  widget.farmclubDiary.date,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return FarmclubRecordScreen();
                },
              ),
            );
          },
          child: RecordPicture(
            like: 0.obs,
            image: widget.farmclubDiary.image,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return FarmclubRecordScreen();
                },
              ),
            );
          },
          child: Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
               widget.farmclubDiary.content,
                style: FarmusThemeData.darkStyle14,
              ),
            ),
          ),
        )
      ],
    );
  }
}
