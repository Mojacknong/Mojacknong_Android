import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_veggie_info_model.freezed.dart';
part 'my_veggie_info_model.g.dart';

@freezed
class MyVeggieInfoModel with _$MyVeggieInfoModel {
  const factory MyVeggieInfoModel({
    required String nickname,
    required String image,
    required String veggieName,
    required String birthDay,
    required int period,
    required int myVeggieId,
  }) = _MyVeggieInfoModel;

  factory MyVeggieInfoModel.fromJson(Map<String, dynamic> json) =>
      _$MyVeggieInfoModelFromJson(json);
}
