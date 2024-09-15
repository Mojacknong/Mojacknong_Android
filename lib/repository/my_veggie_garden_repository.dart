import 'dart:io';

import 'package:farmus/data/network/my_veggie_service.dart';

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

  static Future<String> postDiary(File file, String content, bool isOpen,
      String state, int myVeggieId) async {
    String response = await MyVeggieService()
        .myVeggieDiaryAdd(file, content, isOpen, state, myVeggieId);
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

  static Future<String> diaryDelete(int diaryId, int myVeggieId) async {
    String? response = await MyVeggieService().diaryDelete(diaryId, myVeggieId);
    return response;
  }

  static Future<String> diaryCheck(int myVeggieId) async {
    String? response = await MyVeggieService().diaryCheck(myVeggieId);
    return response;
  }

  static Future<String> motivationMessage() async {
    String? response = await MyVeggieService().motivationMessage();
    return response;
  }

  static Future<String> myVeggieSuccess(
    File file,
    String content,
    int myVeggieId,
  ) async {
    String? response =
        await MyVeggieService().myVeggieSuccess(file, content, myVeggieId);
    return response;
  }

  static Future<String> diaryCommentReport(int commentId, String reason) async {
    String? response =
        await MyVeggieService().diaryCommentReport(commentId, reason);
    return response;
  }
}
