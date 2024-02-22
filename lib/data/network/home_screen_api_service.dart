import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../model/current_mission_list.dart';
import '../../model/my_vege_list.dart';
import '../../model/my_vege_routine_list.dart';
import 'base_api_services.dart';

const storage = FlutterSecureStorage();

class HomeScreenApiService {
  Future<List<String>> getDataFromApi() async {
    try {
      // Example data
      List<String> missions = [
        '상훈이',
        '2',
        '상추에 물 주고 사진 찍기',
      ];

      return missions;
    } catch (e) {
      print(e.toString());
      throw Exception('Failed to load data from API');
    }
  }

  static Future<MyVegeList?> getMyVegeList() async {
    try {
      Response response = await ApiClient().dio.get('/api/veggie');

      if (response.data["data"] != null) {
        final myVegeListData = MyVegeList.fromJson(response.data["data"]);

        print(myVegeListData);
        print(myVegeListData.motivation);

        return myVegeListData;
      }
    } on DioException catch (e) {
      print(e.message);
      print("내 채소 조회 실패");
    }
    return null;
  }

  static FutureOr<CurrentMissionList?> getCurrentMissionList() async {
    try {
      Response response = await ApiClient().dio.get('/api/veggie/mission');

      if (response.data["data"] != null) {
        final currentMissionData =
            CurrentMissionList.fromJson(response.data["data"]);

        print(currentMissionData);

        return currentMissionData;
      }
    } on DioException catch (e) {
      print(e.message);
    }
    return null;
  }

  static FutureOr<MyVegeRoutineList?> getMyVegeRoutineList() async {
    try {
      Response response =
          await ApiClient().dio.get('/api/veggie/routine/today');

      if (response.data["data"] != null) {
        final myVegeRoutineData =
            MyVegeRoutineList.fromJson(response.data["data"]);

        print(myVegeRoutineData);

        return myVegeRoutineData;
      }
    } on DioException catch (e) {
      print(e.message);
      print("내 채소 루틴 조회 실패");
    }
    return null;
  }
}
