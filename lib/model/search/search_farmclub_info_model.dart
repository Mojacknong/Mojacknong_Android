import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_farmclub_info_model.freezed.dart';
part 'search_farmclub_info_model.g.dart';

@freezed
class SearchFarmclubInfoModel with _$SearchFarmclubInfoModel {
  const factory SearchFarmclubInfoModel({
    required int id,
    required String name,
    required String veggieName,
    required String veggieImage,
    required String difficulty,
    required String startedAt,
    required int maxUser,
    required int curUser,
  }) = _SearchFarmclubInfoModel;

  factory SearchFarmclubInfoModel.fromJson(Map<String, dynamic> json) =>
      _$SearchFarmclubInfoModelFromJson(json);
}
