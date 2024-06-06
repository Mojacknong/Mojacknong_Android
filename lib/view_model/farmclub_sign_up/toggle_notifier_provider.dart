import 'package:farmus/view_model/farmclub_sign_up/notifier/toggle_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final toggleNotifierProvider =
    ChangeNotifierProvider((ref) => ToggleNotifier());
