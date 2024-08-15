import 'package:farmus/view/my_page/my_page_feed/my_page_feed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../model/veggie_history/my_veggie_diary_result_model.dart';
import '../../../view_model/vege_history/my_veggie_diary_result_provider.dart';

class MyPageDiaryList extends ConsumerStatefulWidget {
  final String detailId;

  const MyPageDiaryList({
    Key? key,
    required this.detailId,
  }) : super(key: key);

  @override
  _MyPageDiaryListState createState() => _MyPageDiaryListState();
}

class _MyPageDiaryListState extends ConsumerState<MyPageDiaryList> {
  @override
  Widget build(BuildContext context) {
    final AsyncValue<MyVeggieDiaryResultModel> resultData =
    ref.watch(myVeggieDiaryResultModelProvider(widget.detailId));

    return resultData.when(
      data: (data) {
        return ListView.builder(
          shrinkWrap: true,
          itemCount: data.diaries.length,
          itemBuilder: (context, index) {
            final diary = data.diaries[index];
            return MyPageFeed(
              content: diary.content,
              image: diary.postImage,
              postTime: diary.dateTime,
            );
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }
}
