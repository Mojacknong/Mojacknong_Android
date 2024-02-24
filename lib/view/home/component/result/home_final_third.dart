import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mojacknong_android/common/farmus_theme_data.dart';
import 'package:mojacknong_android/view/home/component/result/home_final_controller.dart';
import 'package:mojacknong_android/view/home/component/result/home_final_dialog.dart';
import 'package:mojacknong_android/view/home/component/result/home_select_box.dart';

class HomeFinalThird extends StatefulWidget {
  const HomeFinalThird({Key? key}) : super(key: key);

  @override
  _HomeFinalThird createState() => _HomeFinalThird();
}

class _HomeFinalThird extends State<HomeFinalThird> {
  final HomeFinalController _homeFinalController =
      Get.put(HomeFinalController());

  List<String> motivation = [];

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 32,
          ),
          GestureDetector(
            onTap: () {
              _homeFinalController.pickBox3();
            },
            child: HomeSelectBox(
              title: "커뮤니티에서 도움 받아볼래요",
              isSelected: _homeFinalController.isTaped3,
              selectBox: () {
                _homeFinalController.pickBox3();
              },
            ),
          ),
          GestureDetector(
            onTap: () {
              _homeFinalController.pickBox4();
            },
            child: HomeSelectBox(
              title: "괜찮아요, 이대로 종료할게요",
              isSelected: _homeFinalController.isTaped4,
              selectBox: () {
                _homeFinalController.pickBox4();
              },
            ),
          ),
          const SizedBox(
            height: 60,
          ),
        ],
      ),
    );
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
}
