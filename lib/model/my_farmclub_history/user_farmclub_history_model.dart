import 'package:freezed_annotation/freezed_annotation.dart';
import 'farmclub_history_icon_model.dart';

part 'user_farmclub_history_model.freezed.dart';
part 'user_farmclub_history_model.g.dart';

@freezed
class UserFarmclubHistoryModel with _$UserFarmclubHistoryModel {
  const factory UserFarmclubHistoryModel({
    required int farmClubHistoryCount,
    required List<FarmclubHistoryIconModel> farmClubHistoryIcons,
  }) = _UserFarmclubHistoryModel;

  factory UserFarmclubHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$UserFarmclubHistoryModelFromJson(json);
}
