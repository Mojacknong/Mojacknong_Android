import 'package:image_picker/image_picker.dart';

class VeggieDeleteSuccessModel {
  final XFile? file;
  final String content;
  final int veggieId;
  final bool? isComplete;

  VeggieDeleteSuccessModel({
    this.file,
    required this.content,
    required this.veggieId,
    this.isComplete,
  });
}
