import 'package:farmus/data/network/search_farmclub_service.dart';
import 'package:farmus/model/search/search_farmclub_info_model.dart';
import 'package:farmus/view_model/search_farmclub/notifier/delete_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//검색창 텍스트 삭제
final searchFarmclubTextbarProvider =
    StateNotifierProvider<DeletelNotifier, String>((ref) {
  return DeletelNotifier();
});

//검색
final searchFarmclubProvider = FutureProvider<List<SearchFarmclubInfoModel>?>(
  (ref) => SearchFarmclubService().searchFarmclubs(keyword: ''),
);
