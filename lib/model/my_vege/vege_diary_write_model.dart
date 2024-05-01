import 'package:image_picker/image_picker.dart';

class VegeDiaryWriteModel {
  final String? content;
  final XFile? image;
  final bool isComplete;

  VegeDiaryWriteModel({
    required this.content,
    required this.image,
    required this.isComplete,
  });

  VegeDiaryWriteModel copyWith({
    String? content,
    XFile? image,
    required bool isComplete,
  }) {
    return VegeDiaryWriteModel(
      content: content,
      image: image,
      isComplete: isComplete,
    );
  }
}
