import 'package:freezed_annotation/freezed_annotation.dart';

part 'farmclub_sign_up_model.freezed.dart';
part 'farmclub_sign_up_model.g.dart';

@freezed
class FarmclubSignupModel with _$FarmclubSignupModel {
  factory FarmclubSignupModel({
    required int myVeggieId,
    required String nickname,
  }) = _FarmclubSignupModel;

  factory FarmclubSignupModel.fromJson(Map<String, dynamic> json) =>
      _$FarmclubSignupModelFromJson(json);
}
