import 'package:farmus/model/farmclub_sign_up/farmclub_sign_up_vege_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FarmclubSignUpVegeSelectNotifier
    extends StateNotifier<List<FarmclubSignUpVegeModel>> {
  FarmclubSignUpVegeSelectNotifier()
      : super([
          FarmclubSignUpVegeModel(
            vegeName: "상훈이",
            isChecked: false,
          ),
          FarmclubSignUpVegeModel(
            vegeName: "방울토마토",
            isChecked: false,
          ),
          FarmclubSignUpVegeModel(
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
