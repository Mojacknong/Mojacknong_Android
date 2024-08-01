import 'package:farmus/data/network/routine_service.dart';

class RoutineRepository {
  static Future<String> routineDateList(String date) async {
    String? response = await RoutineService().routineDateList(date);
    return response;
  }

  static Future<String> routineMonthList(String month) async {
    String? response = await RoutineService().routineMonthList(month);
    return response;
  }

  static Future<String> myVeggieRoutineInfo(int myVeggieId) async {
    String? response = await RoutineService().myVeggieRoutineInfo(myVeggieId);
    return response;
  }

  static Future<String> myVeggieRoutineCheck(int routineId) async {
    String? response = await RoutineService().myVeggieRoutineCheck(routineId);
    return response;
  }

  static Future<String> routineAdd(
      int myVeggieId, String content, int period) async {
    String? response =
        await RoutineService().routineAdd(myVeggieId, content, period);
    return response;
  }
}
