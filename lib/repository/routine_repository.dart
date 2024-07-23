import 'package:farmus/data/network/routine_service.dart';

class RoutineRepository {
  static Future<String> routineList() async {
    String? response = await RoutineService().routineList();
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
}
