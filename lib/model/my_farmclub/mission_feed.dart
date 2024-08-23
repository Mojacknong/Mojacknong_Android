import 'package:freezed_annotation/freezed_annotation.dart';

part 'mission_feed.freezed.dart';
part 'mission_feed.g.dart';

@freezed
class MissionFeed with _$MissionFeed {
  const factory MissionFeed({
    required int code,
    required String message,
    required MissionData data,
  }) = _MissionFeed;

  factory MissionFeed.fromJson(Map<String, dynamic> json) =>
      _$MissionFeedFromJson(json);
}

@freezed
class MissionData with _$MissionData {
  const factory MissionData({
    required List<MissionPost> missionPosts,
  }) = _MissionData;

  factory MissionData.fromJson(Map<String, dynamic> json) =>
      _$MissionDataFromJson(json);
}

@freezed
class MissionPost with _$MissionPost {
  const factory MissionPost({
    required int missionPostId,
    required String nickname,
    required String profileImage,
    required DateTime date,
    required String image,
    required String content,
    required int likeCount,
    required int commentCount,
    required bool isLiked,
  }) = _MissionPost;

  factory MissionPost.fromJson(Map<String, dynamic> json) =>
      _$MissionPostFromJson(json);
}
