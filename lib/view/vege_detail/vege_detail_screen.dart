import 'package:farmus/common/app_bar/more_vertical_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VegeDetailScreen extends ConsumerWidget {
  const VegeDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: MoreVerticalAppBar(
        title: "2023년 11월 25일",
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/image/ic_more_vertical.svg'),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
