import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../model/farmclub_open/farmclub_possible_model.dart';
import '../../repository/farmclub_open_repository.dart';

part 'farmclub_possible_vege.g.dart';

@riverpod
Future<FarmclubPossibleModel> farmclubPossibleModel(FarmclubPossibleModelRef ref) async {
  final response = await FarmclubOpenRepository.farmclubPossible();

  final Map<String, dynamic> json = jsonDecode(response) as Map<String, dynamic>;
  final data = json['data'] as Map<String, dynamic>;

  return FarmclubPossibleModel.fromJson(data);
}