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

  static Future<String> myVeggieDelete(int veggieId) async {
    String? response = await MyVeggieService().myVeggieDelete(veggieId);
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

  static Future<String> farmclubDiaryAll(int farmclubId) async {
    String? response = await MyVeggieService().farmclubDiaryAll(farmclubId);
    return response;
  }

  static Future<String> diaryComment(int diaryId) async {
    String? response = await MyVeggieService().diaryComment(diaryId);
    return response;
  }

  static Future<String> diaryCommentAdd(int diaryId, String content) async {
    String? response =
        await MyVeggieService().diaryCommentAdd(diaryId, content);
    return response;
  }

  static Future<String> diaryCommentDelete(int diaryCommentId) async {
    String? response =
        await MyVeggieService().diaryCommentDelete(diaryCommentId);
    return response;
  }

  static Future<String> diaryLike(int diaryId) async {
    String? response = await MyVeggieService().diaryLike(diaryId);
    return response;
  }

  static Future<String> diaryLikeDelete(int diaryId) async {
    String? response = await MyVeggieService().diaryLikeDelete(diaryId);
    return response;
  }
}
