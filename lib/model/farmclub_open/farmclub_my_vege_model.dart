import 'package:freezed_annotation/freezed_annotation.dart';

part 'farmclub_my_vege_model.freezed.dart';
part 'farmclub_my_vege_model.g.dart';

@freezed
class FarmclubMyVegeModel with _$FarmclubMyVegeModel {
  const factory FarmclubMyVegeModel({
    required int myVeggieId,
    required String veggieInfoId,
    required String nickname,
  }) = _FarmclubMyVegeModel;

  factory FarmclubMyVegeModel.fromJson(Map<String, dynamic> json) => _$FarmclubMyVegeModelFromJson(json);
}
