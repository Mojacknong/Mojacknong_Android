import 'package:farmus/model/farmclub_open/farmclub_open_info_model.dart';
import 'package:farmus/view_model/farmclub_open/notifier/farmclub_open_info_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final farmclubOpenInfoAddProvider =
    StateNotifierProvider<FarmclubOpenInfoNotifier, FarmclubOpenInfoModel>(
        (ref) {
  return FarmclubOpenInfoNotifier();
});
