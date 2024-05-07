import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:farmus/view/my_vege/my_vege_screen.dart';
import 'package:farmus/view/vege_info/component/vege_info_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VegeInfoScreen extends ConsumerWidget {
  const VegeInfoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: BackLeftTitleAppBar(
        title: '채소 정보',
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyVegeScreen()),
              );
            },
            icon: SvgPicture.asset('assets/image/ic_list.svg'),
          )
        ],
      ),
      body: const Column(
        children: [
          VegeInfoDetail(),
        ],
      ),
    );
  }
}
