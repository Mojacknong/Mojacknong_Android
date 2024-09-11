import 'package:freezed_annotation/freezed_annotation.dart';

part 'mission_user_list_model.freezed.dart';
part 'mission_user_list_model.g.dart';

@freezed
class MissionUserListModel with _$MissionUserListModel {
  const factory MissionUserListModel({
    required int userId,
    required String nickname,
    required String profileImage,
  }) = _MissionUserListModel;

  factory MissionUserListModel.fromJson(Map<String, dynamic> json) =>
      _$MissionUserListModelFromJson(json);
}
