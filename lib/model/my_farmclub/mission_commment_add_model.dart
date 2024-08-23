class MissionCommentAddModel {
  final int? missionPostId;
  final String comment;
  final bool isNotEmpty;

  MissionCommentAddModel({this.missionPostId, required this.comment, required this.isNotEmpty});
}
