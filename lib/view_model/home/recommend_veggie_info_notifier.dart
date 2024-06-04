import 'dart:convert';

import 'package:farmus/model/home/recommend_veggie_model.dart';
import 'package:farmus/repository/my_veggie_garden_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recommend_veggie_info_notifier.g.dart';

@riverpod
Future<List<RecommendVeggieModel>> recommendVeggieModel(
    RecommendVeggieModelRef ref) async {
  final response = await MyVeggieGardenRepository.recommendVeggieInfo();
  final json = jsonDecode(response) as Map<String, dynamic>;

  final dataList = json['data'] as List<dynamic>;

  final List<RecommendVeggieModel> models = dataList
      .map((data) => RecommendVeggieModel.fromJson(data as Map<String, dynamic>))
      .toList();

  return models;
}
