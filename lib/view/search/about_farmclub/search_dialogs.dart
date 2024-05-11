import 'package:farmus/view/search/about_farmclub/about_farmclub_first.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchDialogs extends ConsumerWidget {
  const SearchDialogs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      children: [AboutFarmclubFirst()],
    );
  }
}
