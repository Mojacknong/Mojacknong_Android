import 'dart:async';

import 'package:dio/dio.dart';
import 'package:farmus/view/login/component/login_img_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';

import '../../common/base/bouncing.dart';
import '../../model/farmus_user.dart';
import '../../repository/login_repository.dart';
import '../../res/app_url/app_url.dart';
import 'app_interceptor.dart';

final GoogleSignIn googleSignIn = GoogleSignIn();
const storage = FlutterSecureStorage();

Dio dio = Dio(
  BaseOptions(
    baseUrl: AppUrl.loginUrl,
  ),
);

Dio authDio = Dio(
  BaseOptions(
    baseUrl: AppUrl.loginUrl,
  ),
);

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late FarmusUser user;
  final PageController _pageController = PageController();
  final List<String> _pageContents = [
    'Page 1',
    'Page 2',
    'Page 3',
    'Page 4',
    'Page 5'
  ];

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _startTimer() {
    Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      if (_currentPage < _pageContents.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
        _pageController.jumpToPage(0);
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    authDio.interceptors.add(AppInterceptor(authDio));

    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _pageContents.length,
            onPageChanged: (int page) {
              setState(() {});
            },
            itemBuilder: (context, index) {
              return getPageContent(index);
            },
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 120,
            child: Bouncing(
              onPress: () {},
              child: GestureDetector(
                onTap: () {
                  kakaoLogin();
                },
                child: SvgPicture.asset(
                  "assets/image/login_kakao.svg",
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Positioned(
            left: 0,
            right: 0,
            bottom: 50,
            child: Bouncing(
              onPress: () {},
              child: GestureDetector(
                onTap: () {
                  googleLogin();
                },
                child: SvgPicture.asset(
                  "assets/image/login_google.svg",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getPageContent(int index) {
    switch (index) {
      case 0:
        return const LoginImgWidget(
          text: "나에게 맞는 팜클럽을 가입해요",
          imgPath: "assets/image/img_login_first.png",
        );
      case 1:
        return const LoginImgWidget(
          horizontalPadding: 58,
          text: "주기별 미션을 인증하고",
          imgPath: "assets/image/img_login_second.png",
        );
      case 2:
        return const LoginImgWidget(
          horizontalPadding: 58,
          text: "주기별 미션을 인증하고",
          imgPath: "assets/image/img_login_third.png",
        );
      case 3:
        return const LoginImgWidget(
          horizontalPadding: 58,
          text: "주기별 미션을 인증하고",
          imgPath: "assets/image/img_login_fourth.png",
        );
      case 4:
        return const LoginImgWidget(
          text: "수확의 기쁨을 함께 나누어요",
          imgPath: "assets/image/img_login_fifth.png",
        );
      default:
        return Container();
    }
  }

  kakaoLogin() async {
    print("카카오 로그인 버튼 클릭");
    print(await KakaoSdk.origin);

    bool isInstalled = await isKakaoTalkInstalled();
    OAuthToken? token;

    if (isInstalled) {
      try {
        token = await UserApi.instance.loginWithKakaoTalk();
        print('카카오톡으로 로그인 성공1');
        fetchKaKaoData(token.accessToken);
      } catch (error) {
        print('카카오톡으로 로그인 실패1 $error');

        // 사용자가 카카오톡 설치 후 디바이스 권한 요청 화면에서 로그인을 취소한 경우,
        // 의도적인 로그인 취소로 보고 카카오계정으로 로그인 시도 없이 로그인 취소로 처리 (예: 뒤로 가기)
        if (error is PlatformException && error.code == 'CANCELED') {
          return;
        }
        // 카카오톡에 연결된 카카오계정이 없는 경우, 카카오계정으로 로그인
        try {
          token = await UserApi.instance.loginWithKakaoAccount();
          print('카카오계정으로 로그인 성공2');
          fetchKaKaoData(token.accessToken);
        } catch (error) {
          print('카카오계정으로 로그인 실패2 $error');
        }
      }
    } else {
      try {
        token = await UserApi.instance.loginWithKakaoAccount();
        print('카카오계정으로 로그인 성공3');
        print(token.accessToken);
        fetchKaKaoData(token.accessToken);
      } catch (error) {
        print('카카오계정으로 로그인 실패3 $error');
      }
    }
  }

  fetchKaKaoData(token) {
    LoginRepository.kakaoLoginApi(token).then(
      (value) {
        setState(() {
          user = value;
        });
        print(value.early);
        print(value.nickName);

        if (value.early == true) {
        } else {}
      },
    );
  }

  googleLogin() async {
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();

    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount!.authentication;

    print("구글 액세스 토큰 ${googleSignInAuthentication.accessToken}");
    LoginRepository.googleLoginApi(googleSignInAuthentication.accessToken).then(
      (value) {
        setState(() {
          user = value;
        });
        print("초기 로그인 ${value.early}");
        print(value.nickName);

        if (value.early == true) {
        } else {}
      },
    );
  }

  reissue() {
    LoginRepository.reissueApi().then((value) {});
  }

  logout() {
    LoginRepository.logoutApi().then((value) {});
  }
}
