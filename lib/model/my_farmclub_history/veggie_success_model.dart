import 'package:image_picker/image_picker.dart';

class VeggieSuccessModel {
  final XFile? file;
  final String content;
  final int veggieId;
  final bool? isComplete;

  VeggieSuccessModel({
    this.file,
    required this.content,
    required this.veggieId,
    this.isComplete,
  });
}
