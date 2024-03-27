import 'package:farmus/view/home/component/none/home_vegi_info.dart';
import 'package:farmus/view_model/home/home_vegi_add_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../home/component/home_add_sub_title.dart';

class HomeVegiAddFirst extends ConsumerWidget {
  const HomeVegiAddFirst({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSelected = ref.watch(homeVegiInfoAddProvider);
    final selectVegi = ref.read(homeVegiInfoAddProvider.notifier);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: HomeAddSubTitle(text: "등록할 채소를 선택해주세요"),
          ),
          GestureDetector(
            onTap: () {
              selectVegi.selectFirstBox();
            },
            child: HomeVegiInfo(
              vegi: "상추",
              level: "초급",
              period: "1달",
              selected: isSelected.isFirstSelect,
            ),
          ),
          GestureDetector(
            onTap: () {
              selectVegi.selectSecondBox();
            },
            child: HomeVegiInfo(
              vegi: "대파",
              level: "초급",
              period: "1달",
              selected: isSelected.isSecondSelect,
            ),
          ),
          GestureDetector(
            onTap: () {
              selectVegi.selectThirdBox();
            },
            child: HomeVegiInfo(
              vegi: "바질",
              level: "중급",
              period: "1달",
              selected: isSelected.isThirdSelect,
            ),
          ),
          GestureDetector(
            onTap: () {
              selectVegi.selectFourthBox();
            },
            child: HomeVegiInfo(
              vegi: "깻잎",
              level: "중급",
              period: "1달",
              selected: isSelected.isFourthSelect,
            ),
          ),
          GestureDetector(
            onTap: () {
              selectVegi.selectFiveBox();
            },
            child: HomeVegiInfo(
              vegi: "고추",
              level: "고급",
              period: "1달",
              selected: isSelected.isFiveSelect,
            ),
          ),
          GestureDetector(
            onTap: () {
              selectVegi.selectSixBox();
            },
            child: HomeVegiInfo(
              vegi: "방울토마토",
              level: "고급",
              period: "1달",
              selected: isSelected.isSixSelect,
            ),
          ),
        ],
      ),
    );
  }
}
