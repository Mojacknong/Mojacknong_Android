import 'package:farmus/common/app_bar/back_left_title_app_bar.dart';
import 'package:flutter/material.dart';

class VegeDiaryScreen extends StatelessWidget {
  const VegeDiaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BackLeftTitleAppBar(
        title: "성장일기",
      ),
    );
  }
}
