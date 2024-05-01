import 'package:farmus/common/app_bar/primary_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VegeDiaryWriteScreen extends ConsumerWidget {
  const VegeDiaryWriteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: PrimaryAppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset("assets/image/ic_close.svg"),
        ),
        title: "일기 쓰기",
        centerTitle: false,
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
