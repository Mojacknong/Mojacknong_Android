import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/button/home_my_vege_button.dart';
import '../../../view_model/home/home_vege_add_provider.dart';
import '../../vege_add/home_vege_add_screen.dart';

class HomeMyVegeList extends ConsumerWidget {
  const HomeMyVegeList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          Padding(
            padding: const EdgeInsets.only(right: 6.0),
            child: HomeMyVegeButton(
              enabled: true,
              text: "상훈이",
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 6.0),
            child: HomeMyVegeButton(
              enabled: true,
              text: "방울이",
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 6.0),
            child: HomeMyVegeButton(
              enabled: true,
              text: "깨르륵",
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
