import 'package:farmus/view_model/home/home_vege_add_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../home/component/home_add_sub_title.dart';
import '../../home/component/none/home_vege_info.dart';

class HomeVegeAddFirst extends ConsumerWidget {
  const HomeVegeAddFirst({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSelected = ref.watch(homeVegeInfoAddProvider);
    final selectVege = ref.read(homeVegeInfoAddProvider.notifier);

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
              selectVege.selectFirstBox();
            },
            child: HomeVegeInfo(
              image: '',
              vege: "상추",
              level: "초급",
              period: "1달",
              selected: isSelected.isFirstSelect,
            ),
          ),
          GestureDetector(
            onTap: () {
              selectVege.selectSecondBox();
            },
            child: HomeVegeInfo(
              image: '',
              vege: "대파",
              level: "초급",
              period: "1달",
              selected: isSelected.isSecondSelect,
            ),
          ),
          GestureDetector(
            onTap: () {
              selectVege.selectThirdBox();
            },
            child: HomeVegeInfo(
              image: '',
              vege: "바질",
              level: "중급",
              period: "1달",
              selected: isSelected.isThirdSelect,
            ),
          ),
          GestureDetector(
            onTap: () {
              selectVege.selectFourthBox();
            },
            child: HomeVegeInfo(
              image: '',
              vege: "깻잎",
              level: "중급",
              period: "1달",
              selected: isSelected.isFourthSelect,
            ),
          ),
          GestureDetector(
            onTap: () {
              selectVege.selectFiveBox();
            },
            child: HomeVegeInfo(
              image: '',
              vege: "고추",
              level: "고급",
              period: "1달",
              selected: isSelected.isFiveSelect,
            ),
          ),
          GestureDetector(
            onTap: () {
              selectVege.selectSixBox();
            },
            child: HomeVegeInfo(
              image: '',
              vege: "방울토마토",
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
