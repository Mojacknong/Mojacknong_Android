import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mojacknong_android/common/farmus_theme_data.dart';
import 'package:mojacknong_android/view/login/login_screen.dart';
import 'package:mojacknong_android/view_model/controllers/bottom_sheet_controller.dart';

import '../../repository/mypage_repository.dart';

const storage = FlutterSecureStorage();

class CupertinoActionSheetHelper {
  BottomSheetController bottomSheetController = BottomSheetController();


  static void showActionSheetComment(
    BuildContext? context, {
    required String message,
    required String cancelText,
    required String confirmText,
  }) {
    showCupertinoModalPopup<void>(
      context: context!,
      builder: (BuildContext context) => CupertinoActionSheet(
        message: Text(
          message,
          style: const TextStyle(
            color: FarmusThemeData.grey2,
            fontSize: 12,
            fontFamily: "Pretendard",
          ),
        ),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            isDestructiveAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              cancelText,
              style: const TextStyle(
                color: FarmusThemeData.dark,
                fontSize: 14,
                fontFamily: "Pretendard",
              ),
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              confirmText,
              style: const TextStyle(
                color: FarmusThemeData.dark,
                fontSize: 14,
                fontFamily: "Pretendard",
              ),
            ),
          ),
        ],
      ),
    );
  }

  static void showActionSheetRedMessage(
    BuildContext? context, {
    required String message,
    required String cancelText,
    required String confirmText,
  }) {
    showCupertinoModalPopup<void>(
      context: context!,
      builder: (BuildContext context) => CupertinoActionSheet(
        message: Text(
          message,
          style: const TextStyle(
            color: FarmusThemeData.grey2,
            fontSize: 12,
            fontFamily: "Pretendard",
          ),
        ),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            isDestructiveAction: true,
            onPressed: () async {
              try {
                // API 호출 코드
                MypageRepository.logoutApi();

                await storage.delete(key: "refreshToken");
                await storage.delete(key: 'accessToken');

                print(await storage.read(key: "refreshToken"));
                print(await storage.read(key: "accessToken"));

                // API 호출이 완료되면 새로운 화면으로 이동
                await Navigator.pushReplacement(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          const LoginScreen()), // NewScreen은 이동할 화면의 클래스

                );
              } catch (error) {
                // API 호출 중 오류 처리
                print("API 호출 중 오류 발생: $error");
              } finally {

                // API 호출 완료 후 액션 시트를 닫기
                Navigator.pop(context);
              }
            },
            child: Text(
              confirmText,
              style: const TextStyle(
                color: FarmusThemeData.red,
                fontSize: 14,
                fontFamily: "Pretendard",
              ),
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              cancelText,
              style: const TextStyle(
                color: FarmusThemeData.dark,
                fontSize: 14,
                fontFamily: "Pretendard",
              ),
            ),
          ),
        ],
      ),
    );
  }

  static void showUserDeleteCupertinoActionSheet(
      BuildContext context, {
        required String message,
        required List<String> options,
        List<Function>? optionActions,
        required String cancelButtonText,
      }) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        actions: List.generate(
          options.length,
              (index) => CupertinoActionSheetAction(
            onPressed: () {
              if (optionActions != null && optionActions.isNotEmpty) {
                optionActions[index]();
              }
              Navigator.pop(context);
            },
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "팜어스를 탈퇴하시겠어요?",
                    style: FarmusThemeData.darkStyle16,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Divider(
                    color: FarmusThemeData.grey3,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/image/ic_alert_circle.svg"),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "지금까지의 홈파밍 기록이 모두 사라져요",
                        style: FarmusThemeData.redStyle,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "채소/팜클럽 히스토리가 모두 사라져요",
                    style: FarmusThemeData.darkStyle14,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "미션/루틴을 체크할 수 없어요",
                    style: FarmusThemeData.darkStyle14,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "성장일기가 모두 사라져요",
                    style: FarmusThemeData.darkStyle14,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "커뮤니티 소식을 받을 수 없어요",
                    style: FarmusThemeData.darkStyle14,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ]),
          ),
        ),
        cancelButton: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.black.withOpacity(0.2),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white.withOpacity(0.8),
                  ),
                  child: CupertinoActionSheetAction(
                    onPressed: () => Navigator.pop(context),
                    isDestructiveAction: true,
                    child: const Text(
                      '취소',
                      style: FarmusThemeData.darkStyle14,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white.withOpacity(0.8),
                  ),
                  child: CupertinoActionSheetAction(
                      onPressed: () async {

                        try {
                          MypageRepository.userDeleteApi();

                          await storage.delete(key: "refreshToken");
                          await storage.delete(key: 'accessToken');

                          print(await storage.read(key: "refreshToken"));
                          print(await storage.read(key: "accessToken"));

                          await Navigator.pushReplacement(
                            context,
                            CupertinoPageRoute(
                                builder: (context) =>
                                const LoginScreen()), // NewScreen은 이동할 화면의 클래스
                          );
                        } catch (error) {
                          print("API 호출 중 오류 발생: $error");
                        } finally {

                          // API 호출 완료 후 액션 시트를 닫기
                          Navigator.pop(context);
                        }

                      },

                    child: const Text(
                      '탈퇴하기',
                      style: FarmusThemeData.darkStyle14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static void showCustomCupertinoActionSheet(
    BuildContext context, {
    required String message,
    required List<String> options,
    List<Function>? optionActions,
    required String cancelButtonText,
  }) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        message: Text(
          message,
          style: const TextStyle(
            color: FarmusThemeData.grey2,
            fontSize: 12,
            fontFamily: "Pretendard",
          ),
        ),
        actions: List.generate(
          options.length,
          (index) => CupertinoActionSheetAction(
            onPressed: () {
              if (optionActions != null && optionActions.isNotEmpty) {


                optionActions[index]();
              }
              Navigator.pop(context);
            },
            child: Text(
              options[index],
              style: const TextStyle(
                color: FarmusThemeData.dark,
                fontSize: 14,
                fontFamily: "Pretendard",
              ),
            ),
          ),
        ),
        cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            cancelButtonText,
            style: const TextStyle(
              color: FarmusThemeData.dark,
              fontSize: 14,
              fontFamily: "Pretendard",
            ),
          ),
        ),
      ),
    );
  }

  static void showCustomCupertinoActionRedSheet(
    BuildContext context, {
    String? title,
    required String message,
    required List<String> options,
    List<Function()>? optionActions,
    required String cancelButtonText,
  }) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: title != null ? Text(title) : null,
        message: Text(
          message,
          style: const TextStyle(
            color: FarmusThemeData.grey2,
            fontSize: 12,
            fontFamily: "Pretendard",
          ),
        ),
        actions: List.generate(
          options.length,
          (index) => CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              options[index],
              style: const TextStyle(
                color: FarmusThemeData.dark,
                fontSize: 14,
                fontFamily: "Pretendard",
              ),
            ),
          ),
        ),
        cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            cancelButtonText,
            style: const TextStyle(
              color: FarmusThemeData.dark,
              fontSize: 14,
              fontFamily: "Pretendard",
            ),
          ),
        ),
      ),
    );
  }
}
