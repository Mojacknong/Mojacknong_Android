import 'dart:convert';
import 'package:farmus/model/home/my_veggie_list_model.dart';
import 'package:farmus/repository/my_veggie_garden_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_veggie_list.g.dart';

@riverpod
Future<List<MyVeggieListModel>> myVeggieListModel(MyVeggieListModelRef ref) async {
  final response = await MyVeggieGardenRepository.myVeggieList();
  final json = jsonDecode(response) as Map<String, dynamic>;
  final List<dynamic> data = json['data'] as List<dynamic>;
  return data.map((item) => MyVeggieListModel.fromJson(item)).toList();
}
