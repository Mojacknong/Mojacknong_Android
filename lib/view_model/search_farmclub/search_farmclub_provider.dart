import 'package:farmus/view_model/search_farmclub/notifier/delete_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchFarmclubTextbarProvider =
    StateNotifierProvider<DeletelNotifier, String>((ref) {
  return DeletelNotifier();
});
