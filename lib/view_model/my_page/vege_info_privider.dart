import 'package:farmus/view_model/my_page/notifier/vege_profile_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final vegeInfoProvider = ChangeNotifierProvider<VegeInfoNotifier>((ref) {
  return VegeInfoNotifier();
});
