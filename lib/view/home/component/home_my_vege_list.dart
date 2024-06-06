import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/button/home_my_vege_button.dart';
import '../../../view_model/home/home_provider.dart';
import '../../../view_model/my_vege/notifier/my_veggie_list.dart';
import '../../vege_add/home_vege_add_screen.dart';

class HomeMyVegeList extends ConsumerWidget {
  const HomeMyVegeList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final veggieListAsyncValue = ref.watch(myVeggieListModelProvider);

    return veggieListAsyncValue.when(
      data: (veggieList) {
        if (veggieList.isEmpty) {
          return const Center(child: Text('No data available'));
        }
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
                    enabled: true,
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
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }
}
