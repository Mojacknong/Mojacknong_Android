import 'package:image_picker/image_picker.dart';

class VegeDeleteSuccessModel {
  final String? content;
  final XFile? image;
  final bool? isComplete;

  VegeDeleteSuccessModel({
    required this.content,
    required this.image,
    required this.isComplete,
  });

  VegeDeleteSuccessModel copyWith({
    String? content,
    XFile? image,
    bool? isComplete,
  }) {
    return VegeDeleteSuccessModel(
      content: content,
      image: image,
      isComplete: isComplete,
    );
  }
}
