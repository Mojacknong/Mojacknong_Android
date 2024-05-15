import 'package:farmus/model/farmclub_signup/farmclub_signup_vege_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FarmclubSignupVegeSelectNotifier
    extends StateNotifier<List<FarmclubSignupVegeModel>> {
  FarmclubSignupVegeSelectNotifier()
      : super([
          FarmclubSignupVegeModel(
            vegeName: "상훈이",
            isChecked: false,
          ),
          FarmclubSignupVegeModel(
            vegeName: "방울토마토",
            isChecked: false,
          ),
          FarmclubSignupVegeModel(
            vegeName: "깨르륵",
            isChecked: false,
          ),
        ]);

  void toggleVege(String vegeName) {
    state = state.map((vege) {
      if (vege.vegeName == vegeName) {
        return vege.copyWith(isChecked: !vege.isChecked);
      }
      return vege;
    }).toList();
  }
}
