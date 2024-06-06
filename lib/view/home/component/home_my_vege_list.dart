import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/button/home_my_vege_button.dart';
import '../../../model/my_vege/my_vege_model.dart';
import '../../../view_model/home/home_vege_add_provider.dart';
import '../../../view_model/my_vege/notifier/my_veggie_list_notifier.dart';
import '../../vege_add/home_vege_add_screen.dart';

class HomeMyVegeList extends ConsumerWidget {
  const HomeMyVegeList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final futureVeggieList = ref.read(myVeggieListNotifierProvider.notifier).fetchMyVeggieList();

    return FutureBuilder<List<MyVegeModel>>(
      future: futureVeggieList,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No data available'));
        } else {
          final veggieList = snapshot.data!;
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    ref.read(homeVegeAddMoveProvider.notifier).reset();
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
                      text: veggie.vegeName,
                      onPressed: () {},
                      fontPadding: 0.0,
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
