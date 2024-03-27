import 'package:farmus/common/button/home_my_vegi_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../view_model/home/home_vegi_add_provider.dart';
import '../../vegi_add/home_vegi_add_screen.dart';

class HomeMyVegiList extends ConsumerWidget {
  const HomeMyVegiList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              ref.read(homeVegiInfoAddProvider.notifier).reset();
              ref.read(homeVegiAddMoveProvider.notifier).reset();
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const HomeVegiAddScreen()),
              );
            },
            icon: SvgPicture.asset("assets/image/ic_vegi_add.svg"),
          ),
          const SizedBox(
            width: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 6.0),
            child: HomeMyVegiButton(
              enabled: true,
              text: "상훈이",
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 6.0),
            child: HomeMyVegiButton(
              enabled: true,
              text: "방울이",
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 6.0),
            child: HomeMyVegiButton(
              enabled: true,
              text: "깨르륵",
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
