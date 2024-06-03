import 'package:farmus/view/home/component/home_motivation.dart';
import 'package:farmus/view/home/component/home_my_vege_list.dart';
import 'package:farmus/view/home/component/home_sub_title.dart';
import 'package:farmus/view/home/component/home_to_do.dart';
import 'package:farmus/view/home/component/home_vege_to_do.dart';
import 'package:farmus/view/home/component/none/home_my_vege_none.dart'; // Ensure this import is present
import 'package:farmus/view_model/my_vege/notifier/my_veggie_list_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/app_bar/home_app_bar.dart';
import 'component/home_my_vege.dart';
import 'component/home_vege_diary.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    final responseFuture =
        ref.watch(myVeggieListNotifierProvider.notifier).myVeggieList();

    return Scaffold(
      appBar: const HomeScreenAppBar(),
      body: FutureBuilder<List<dynamic>>(
        future: responseFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final data = snapshot.data!;
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (data.isEmpty) const HomeMyVegeNone(),
                    if (data.isNotEmpty) ...[
                      const HomeMyVegeList(),
                      const SizedBox(height: 8),
                      HomeMyVege(size: size),
                      const HomeMotivation(
                        motivation: "텃밭에서 식탁까지 팜어스와 늘 함께해요!",
                      ),
                    ],
                    const SizedBox(height: 8),
                    const HomeSubTitle(title: "오늘 할 일"),
                    const HomeToDo(),
                    const HomeVegeTodo(),
                    const SizedBox(height: 24),
                    const HomeSubTitle(title: "성장 일기"),
                    const HomeVegeDiary(),
                  ],
                ),
              ),
            );
          } else {
            return const Center(child: Text('No data available'));
          }
        },
      ),
    );
  }
}
