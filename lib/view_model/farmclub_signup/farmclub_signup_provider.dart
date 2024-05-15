import 'package:farmus/model/farmclub_signup/farmclub_signup_vege_model.dart';
import 'package:farmus/view_model/farmclub_signup/notifier/farmclub_signup_vege_select_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final farmclubSignupVegeSelectNotifierProvider = StateNotifierProvider<
    FarmclubSignupVegeSelectNotifier, List<FarmclubSignupVegeModel>>(
  (ref) => FarmclubSignupVegeSelectNotifier(),
);
