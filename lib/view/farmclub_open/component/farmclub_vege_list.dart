import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/button/home_my_vege_button.dart';
import '../../../model/farmclub_open/farmclub_my_vege_model.dart';
import '../../../view_model/farmclub_open/farmclub_my_vege_provider.dart';
import '../../../view_model/farmclub_open/farmclub_open_provider.dart';

class FarmclubVegeList extends ConsumerWidget {
  const FarmclubVegeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedVegeId = ref.watch(selectedFarmclubVegeIdProvider);

    return FutureBuilder<List<FarmclubMyVegeModel>>(
      future: ref.watch(farmclubMyVegeModelProvider.future),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No data available!'));
        }

        final veggieList = snapshot.data!;

        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(width: 8),
              ...veggieList.map(
                    (veggie) => Padding(
                  padding: const EdgeInsets.only(right: 6.0),
                  child: HomeMyVegeButton(
                    enabled: selectedVegeId == null
                        ? veggie.myVeggieId == veggieList.first.myVeggieId
                        : veggie.myVeggieId == selectedVegeId,
                    text: veggie.nickname,
                    onPressed: () {
                      ref.read(selectedFarmclubVegeIdProvider.notifier).state =
                          veggie.myVeggieId;
                      print(veggie.myVeggieId);
                    },
                    fontPadding: 0,
                    padding: 16.0,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
