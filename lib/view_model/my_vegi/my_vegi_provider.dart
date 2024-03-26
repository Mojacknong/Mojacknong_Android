
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/home/my_vegi_model.dart';
import 'notifier/my_vegi_notifier.dart';

final myVegiProvider = StateNotifierProvider<MyVegiNotifier, List<MyVegiModel>>((ref) {
  return MyVegiNotifier();
});


