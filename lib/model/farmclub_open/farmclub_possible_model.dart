import 'package:freezed_annotation/freezed_annotation.dart';

part 'farmclub_possible_model.freezed.dart';
part 'farmclub_possible_model.g.dart';

@freezed
class FarmclubPossibleModel with _$FarmclubPossibleModel {
  const factory FarmclubPossibleModel({
    required int reason,
  }) = _FarmclubPossibleModel;

  factory FarmclubPossibleModel.fromJson(Map<String, dynamic> json) => _$FarmclubPossibleModelFromJson(json);
}
