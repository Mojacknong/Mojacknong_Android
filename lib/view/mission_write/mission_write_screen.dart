import 'package:farmus/common/app_bar/delete_app_bar.dart';
import 'package:farmus/common/button/primary_color_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MissionWriteScreen extends ConsumerWidget {
  const MissionWriteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: DeleteAppBar(
        title: '인증하기',
        actions: [
          PrimaryColorButton(text: '완료', onPressed: () {}, enabled: false, fontSize: 13, fontPadding: 0,)
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
