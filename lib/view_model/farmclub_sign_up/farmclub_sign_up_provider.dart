import 'package:farmus/model/farmclub_sign_up/farmclub_sign_up_vege_model.dart';
import 'package:farmus/view_model/farmclub_sign_up/notifier/farmclub_sign_up_vege_select_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final farmclubSignUpVegeSelectNotifierProvider = StateNotifierProvider<
    FarmclubSignUpVegeSelectNotifier, List<FarmclubSignUpVegeModel>>(
  (ref) => FarmclubSignUpVegeSelectNotifier(),
);
