import 'package:farmus/common/app_bar/delete_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TipScreen extends ConsumerWidget {
  const TipScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      appBar: DeleteAppBar(
        title: '도움말',
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
