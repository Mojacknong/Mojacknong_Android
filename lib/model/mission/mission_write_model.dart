import 'package:image_picker/image_picker.dart';

class MissionWriteModel {
  final String? content;
  final XFile? image;
  final bool isComplete;

  MissionWriteModel({
    required this.content,
    required this.image,
    required this.isComplete,
  });

  MissionWriteModel copyWith({
    String? content,
    XFile? image,
    required bool isComplete,
  }) {
    return MissionWriteModel(
      content: content,
      image: image,
      isComplete: isComplete,
    );
  }
}
