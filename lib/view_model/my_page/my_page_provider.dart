import 'package:farmus/view_model/my_page/notifier/%08page_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final myPageProvider = StateNotifierProvider<PageNotifier, String>((ref) {
  return PageNotifier();
});
