import 'package:image_picker/image_picker.dart';

class VegeImageContentModel {
  final String? content;
  final XFile? image;
  final bool? isComplete;

  VegeImageContentModel({
    required this.content,
    required this.image,
    required this.isComplete,
  });

  VegeImageContentModel copyWith({
    String? content,
    XFile? image,
    bool? isComplete,
  }) {
    return VegeImageContentModel(
      content: content,
      image: image,
      isComplete: isComplete,
    );
  }
}
