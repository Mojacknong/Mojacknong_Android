import 'package:farmus/common/app_bar/primary_app_bar.dart';
import 'package:farmus/view/home/component/home_add_sub_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class HomeVegiAddScreen extends ConsumerWidget {
  const HomeVegiAddScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: PrimaryAppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset("assets/image/ic_left.svg"),
        ),
        title: "채소 등록",
        centerTitle: false,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [HomeAddSubTitle(text: "등록할 채소를 선택해주세요")],
          ),
        ),
      ),
    );
  }
}
