import 'package:farmus/view_model/my_page/notifier/my_page_farmclub_count_notifier.dart';
import 'package:farmus/view_model/my_page/notifier/my_page_farmclub_info_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final myPageFarmclubProvider =
    ChangeNotifierProvider<MyPageFarmclubInfoNotifier>((ref) {
  return MyPageFarmclubInfoNotifier();
});

final myPageFarmclubCountProvider =
    StateNotifierProvider<MyPageFarmclubCountNotifier, int>((ref) {
  return MyPageFarmclubCountNotifier();
});
