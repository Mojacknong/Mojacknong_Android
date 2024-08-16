import 'package:farmus/view/my_page/my_page_feed/my_page_feed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../model/veggie_history/my_veggie_diary_result_model.dart';
import '../../../view_model/vege_history/my_veggie_diary_result_provider.dart';

class MyPageResultList extends ConsumerStatefulWidget {
  final String detailId;

  const MyPageResultList({
    Key? key,
    required this.detailId,
  }) : super(key: key);

  @override
  _MyPageResultListState createState() => _MyPageResultListState();
}

class _MyPageResultListState extends ConsumerState<MyPageResultList> {
  @override
  Widget build(BuildContext context) {
    final AsyncValue<MyVeggieDiaryResultModel> resultData =
        ref.watch(myVeggieDiaryResultModelProvider(widget.detailId));

    return resultData.when(
      data: (data) {
        return MyPageFeed(
          content: data.farmResult.content,
          image: data.farmResult.postImage,
          postTime: data.farmResult.dateTime,
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }
}
