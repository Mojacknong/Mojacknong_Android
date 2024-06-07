import 'dart:convert';

import 'package:farmus/model/veggie_info/veggie_info_model.dart';
import 'package:farmus/repository/veggie_info_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'veggie_info_notifier.g.dart';

@riverpod
Future<List<VeggieInfoModel>> veggieInfoModel(VeggieInfoModelRef ref) async {
  final response = await VeggieInfoRepository.veggieInfo();
  final json = jsonDecode(response) as Map<String, dynamic>;

  final data = json['data'] as Map<String, dynamic>;
  final veggieList = data['veggieList'] as List<dynamic>;

  final List<VeggieInfoModel> veggies = veggieList
      .map((veggie) => VeggieInfoModel.fromJson(veggie as Map<String, dynamic>))
      .toList();
  return veggies;
}
