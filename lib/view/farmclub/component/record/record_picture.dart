import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mojacknong_android/common/bouncing.dart';
import 'package:mojacknong_android/common/farmus_theme_data.dart';
import 'package:mojacknong_android/view_model/controllers/farmclub/farmclub_controller.dart';

class RecordPicture extends StatefulWidget {
  final RxInt? like;
  final String? image;

  RecordPicture({super.key, this.like, this.image});

  @override
  State<RecordPicture> createState() => _RecordPictureState();
}

class _RecordPictureState extends State<RecordPicture> {
  final FarmclubController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Obx(
            () => Container(
          width: double.infinity,
          height: 248,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: widget.image != ""
                    ? Image.network(
                  widget.image!,
                  fit: BoxFit.cover, // 이미지를 화면에 꽉 채우도록 설정
                  width: double.infinity,
                  height: 248, // 원하는 높이로 조정
                )
                    : Image.asset(
                  "assets/image/image_challenge1.png",
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      if (controller.isSelectLike.value) {
                        // 좋아요 취소
                        controller.isSelectLike.value = false;
                        controller.like.value--;
                      } else {
                        // 좋아요
                        controller.isSelectLike.value = true;
                        controller.like.value++;
                      }
                    },
                    child: Container(
                      width: 51,
                      height: 51,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: FarmusThemeData.white.withOpacity(0.3),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Bouncing(
                            onPress: () {},
                            child: Obx(() {
                              return GestureDetector(
                                onTap: () {
                                  // 좋아요 상태 변경 시 UI 업데이트
                                  if (controller.isSelectLike.value) {
                                    controller.isSelectLike.value = false;
                                    controller.like.value--;
                                  } else {
                                    controller.isSelectLike.value = true;
                                    controller.like.value++;
                                  }
                                },
                                child: SvgPicture.asset(
                                  controller.isSelectLike.value
                                      ? "assets/image/ic_like_true.svg"
                                      : "assets/image/ic_like_false.svg",
                                ),
                              );
                            }),
                          ),
                          Text(
                            controller.like.value.toString(),
                            style: FarmusThemeData.darkStyle12,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
