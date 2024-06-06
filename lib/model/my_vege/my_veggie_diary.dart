import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_veggie_diary.freezed.dart';
part 'my_veggie_diary.g.dart';


@freezed
class MyVeggieDiary with _$MyVeggieDiary {
  const factory MyVeggieDiary({
    required String date,
    required String image,
    required String content,
    required String state,
    required bool isOpen,
  }) = _MyVeggieDiary;

  factory MyVeggieDiary.fromJson(Map<String, dynamic> json) =>
      _$MyVeggieDiaryFromJson(json);
}
