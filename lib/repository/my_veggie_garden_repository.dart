import 'package:farmus/data/network/my_veggie_service.dart';

import '../model/home/diary_write_model.dart';

class MyVeggieGardenRepository {
  static Future<String> myVeggieList() async {
    String? response = await MyVeggieService().myVeggieList();
    return response;
  }

  static Future<String> myVeggieAdd(
    String nickname,
    String birth,
    String veggieInfoId,
  ) async {
    String response =
        await MyVeggieService().myVeggieAdd(nickname, birth, veggieInfoId);
    return response;
  }

  static Future<String> myVeggieProfileList(int myVeggieId) async {
    String? response = await MyVeggieService().myVeggieProfileList(myVeggieId);
    return response;
  }

  static Future<String> myVeggieInfoList() async {
    String? response = await MyVeggieService().myVeggieInfoList();
    return response;
  }

  static Future<String> myVeggieDelete(int routineId) async {
    String? response = await MyVeggieService().myVeggieDelete(routineId);
    return response;
  }


  static Future<String> myVeggieDiaryOne(int myVeggieId) async {
    String? response = await MyVeggieService().myVeggieDiaryOne(myVeggieId);
    return response;
  }

  static Future<String> myVeggieDiaryAll(int myVeggieId) async {
    String? response = await MyVeggieService().myVeggieDiaryAll(myVeggieId);
    return response;
  }

  static Future<String> postDiary(DiaryWriteModel diary) async {
    String response = await MyVeggieService().myVeggieDiaryAdd(
        diary.file, diary.content, diary.isOpen, diary.state, diary.myVeggieId);
    return response;
  }
}
