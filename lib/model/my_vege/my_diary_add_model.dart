import 'dart:ffi';
import 'dart:io';

class MyDiaryAddModel {
  final File file;
  final String content;
  final bool isOpen;
  final String state;
  final Long myVeggieId;

  MyDiaryAddModel({
    required this.file,
    required this.content,
    required this.isOpen,
    required this.state,
    required this.myVeggieId,
  });
}
