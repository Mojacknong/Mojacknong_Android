import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/button/home_my_vege_button.dart';
import '../../../model/home/my_veggie_list_model.dart';
import '../../../view_model/home/home_provider.dart';
import '../../../view_model/my_vege/notifier/my_veggie_list.dart';
import '../../vege_add/home_vege_add_screen.dart';

class HomeMyVegeList extends ConsumerWidget {
  const HomeMyVegeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedVeggieId = ref.watch(selectedVeggieIdProvider);

    return FutureBuilder<List<MyVeggieListModel>>(
      future: ref.watch(myVeggieListModelProvider.future),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No data available'));
        }

        final veggieList = snapshot.data!;

        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeVegeAddScreen(),
                    ),
                  );
                },
                icon: SvgPicture.asset("assets/image/ic_vege_add.svg"),
              ),
              const SizedBox(width: 8),
              ...veggieList.map(
                (veggie) => Padding(
                  padding: const EdgeInsets.only(right: 6.0),
                  child: HomeMyVegeButton(
                    enabled: selectedVeggieId == null
                        ? veggie.myVeggieId == veggieList.first.myVeggieId
                        : veggie.myVeggieId == selectedVeggieId,
                    text: veggie.nickname,
                    onPressed: () {
                      ref.read(selectedVeggieIdProvider.notifier).state =
                          veggie.myVeggieId;
                    },
                    fontPadding: 0.0,
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
