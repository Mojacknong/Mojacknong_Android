import 'package:farmus/model/veggie_history/veggie_history_icon_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_veggie_history_model.freezed.dart';
part 'user_veggie_history_model.g.dart';

@freezed
class UserVeggieHistoryModel with _$UserVeggieHistoryModel {
  const factory UserVeggieHistoryModel({
    required int veggieHistoryCount,
    required List<VeggieHistoryIconModel> veggieHistoryIcons,
  }) = _UserVeggieHistoryModel;

  factory UserVeggieHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$UserVeggieHistoryModelFromJson(json);
}
