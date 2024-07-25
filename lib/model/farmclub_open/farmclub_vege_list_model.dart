import 'package:freezed_annotation/freezed_annotation.dart';

part 'farmclub_vege_list_model.freezed.dart';
part 'farmclub_vege_list_model.g.dart';

@freezed
class FarmclubVegeListModel with _$FarmclubVegeListModel {
  const factory FarmclubVegeListModel({
    required String farmClubName,
    required String farmClubDescription,
    required int maxMemberCount,
    required String startDate,
    required int myVeggieId,
    required String veggieInfoId,
    final bool? isFarmclubOpenInfoComplete,
    final int? selectedVege,
  }) = _FarmclubVegeListModel;

  factory FarmclubVegeListModel.fromJson(Map<String, dynamic> json) => _$FarmclubVegeListModelFromJson(json);
}
