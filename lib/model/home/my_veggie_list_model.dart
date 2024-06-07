import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_veggie_list_model.freezed.dart';
part 'my_veggie_list_model.g.dart';

@freezed
class MyVeggieListModel with _$MyVeggieListModel {
  const factory MyVeggieListModel({
    required int myVeggieId,
    required String nickname,
  }) = _MyVeggieListModel;

  factory MyVeggieListModel.fromJson(Map<String, dynamic> json) => _$MyVeggieListModelFromJson(json);
}
