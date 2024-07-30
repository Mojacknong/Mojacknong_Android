import 'dart:convert';

import 'package:farmus/model/farmclub_open/farmclub_my_vege_model.dart';
import 'package:farmus/repository/farmclub_open_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'farmclub_my_vege_provider.g.dart';

@riverpod
Future<List<FarmclubMyVegeModel>> farmclubMyVegeModel(FarmclubMyVegeModelRef ref) async {
  final response = await FarmclubOpenRepository.farmclubVeggieList();
  final json = jsonDecode(response) as Map<String, dynamic>;
  final List<dynamic> data = json['data'] as List<dynamic>;
  return data.map((item) => FarmclubMyVegeModel.fromJson(item)).toList();
}