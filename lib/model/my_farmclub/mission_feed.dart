import 'package:freezed_annotation/freezed_annotation.dart';

part 'mission_feed.freezed.dart';
part 'mission_feed.g.dart';

@freezed
class MissionFeed with _$MissionFeed {
  const factory MissionFeed({
    required int missionPostId,
    required String nickname,
    required String profileImage,
    required DateTime date,
    required String image,
    required String content,
    required int likeCount,
    required int commentCount,
    required bool isLiked,
  }) = _MissionFeed;

  factory MissionFeed.fromJson(Map<String, dynamic> json) =>
      _$MissionFeedFromJson(json);
}