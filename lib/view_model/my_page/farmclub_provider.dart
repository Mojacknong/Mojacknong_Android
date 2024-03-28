import 'package:farmus/view_model/my_page/notifier/farmclub_count_notifier.dart';
import 'package:farmus/view_model/my_page/notifier/farmclub_profile_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final farmClubProvider = ChangeNotifierProvider<FarmClubInfoNotifier>((ref) {
  return FarmClubInfoNotifier();
});

final farmClubCountProvider =
    StateNotifierProvider<FarmClubCountNotifier, int>((ref) {
  return FarmClubCountNotifier();
});
