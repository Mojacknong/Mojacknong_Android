import 'dart:io';

class DiaryWriteModel {
  final File file;
  final String content;
  final bool isOpen;
  final String state;
  final int myVeggieId;

  DiaryWriteModel({
    required this.file,
    required this.content,
    required this.isOpen,
    required this.state,
    required this.myVeggieId,
  });

  factory DiaryWriteModel.fromJson(Map<String, dynamic> json) {
    return DiaryWriteModel(
      file: json['file'] ?? '',
      content: json['content'] ?? '',
      isOpen: json['isOpen'] ?? false,
      state: json['state'] ?? '',
      myVeggieId: json['content'] ?? -1,
    );
  }
}
