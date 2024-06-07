import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_farmclub_model.freezed.dart';
part 'my_farmclub_model.g.dart';

@freezed
class MyFarmclubModel with _$MyFarmclubModel {
  const factory MyFarmclubModel({
    required int farmClubId,
    required String farmClubImage,
    required String farmClubName,
    required String veggieName,
  }) = _MyFarmclubModel;

  factory MyFarmclubModel.fromJson(Map<String, dynamic> json) => _$MyFarmclubModelFromJson(json);
}
