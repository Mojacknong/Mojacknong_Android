import 'package:farmus/model/home/vege_add_info_model.dart';
import 'package:farmus/view_model/home/home_vege_add_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../home/component/home_add_sub_title.dart';
import '../../home/component/none/home_vege_info.dart';
import 'package:farmus/view_model/veggie_info/veggie_info_notifier.dart';
import 'package:farmus/model/veggie_info/veggie_info_model.dart';

class HomeVegeAddFirst extends ConsumerWidget {
  const HomeVegeAddFirst({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSelected = ref.watch(homeVegeInfoAddProvider);
    final selectVege = ref.read(homeVegeInfoAddProvider.notifier);
    final AsyncValue<List<VeggieInfoModel>> veggieInfo = ref.watch(veggieInfoModelProvider);

    List<Widget> mappedWidgets = veggieInfo.when(
      data: (veggies) {
        return veggies.asMap().entries.map((entry) {
          int index = entry.key;
          VeggieInfoModel veggie = entry.value;

          return GestureDetector(
            onTap: () {
              selectVege.selectBox(index);
            },
            child: HomeVegeInfo(
              image: veggie.veggieImage,
              vege: veggie.name,
              level: veggie.difficulty,
              period: veggie.period,
              selected: isSelected.selectedIndex == index,
            ),
          );
        }).toList();
      },
      loading: () => [const Center(child: CircularProgressIndicator())],
      error: (error, stackTrace) => [Center(child: Text('Error: $error'))],
    );

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: HomeAddSubTitle(text: "등록할 채소를 선택해주세요"),
          ),
          ...mappedWidgets,
        ],
      ),
    );
  }
}
