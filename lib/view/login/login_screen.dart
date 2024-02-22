import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_talk.dart';
import 'package:mojacknong_android/common/bouncing.dart';
import 'package:mojacknong_android/model/farmus_user.dart';
import 'package:mojacknong_android/repository/login_repository.dart';
import 'package:mojacknong_android/view/login/app_interceptor.dart';
import 'package:mojacknong_android/view/main/main_screen.dart';
import 'package:mojacknong_android/view/onboarding/onboarding_screen.dart';

import '../newonboarding/onboard_first.dart';
import '../newonboarding/onboard_fourth.dart';
import '../newonboarding/onboard_second.dart';
import '../newonboarding/onboard_third.dart';


final GoogleSignIn googleSignIn = GoogleSignIn();
const storage = FlutterSecureStorage();

Dio dio = Dio(
  BaseOptions(
    baseUrl: "http://ec2-13-125-15-222.ap-northeast-2.compute.amazonaws.com",
  ),
);

Dio authDio = Dio(
  BaseOptions(
    baseUrl: "http://ec2-13-125-15-222.ap-northeast-2.compute.amazonaws.com",
  ),
);

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late FarmusUser user;
  final PageController _pageController = PageController();
  final List<String> _pageContents = ['Page 1', 'Page 2', 'Page 3', 'Page 4'];
  int _currentPage = 0;

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
                setState(() {
                  _currentPage = page;
                });
              },
              itemBuilder: (context, index) {
                if (index == 0) {
                  return const OnboardFirst();
                } else if (index == 1) {
                  return const OnboardSecond();
                } else if (index == 2) {
                  return const OnboardThird();
                } else if (index == 3) {
                  return const OnboardFourth();
                } else {
                  return Container();
                }
              },
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 220,
              child: buildPageIndicator(),
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
        ));
  }

  Widget buildPageIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        _pageContents.length,
            (index) => buildIndicator(index),
      ),
    );
  }

  Widget buildIndicator(int index) {
    return Container(
      width: 6.0,
      height: 6.0,
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentPage == index
            ? const Color(0x7e000000)
            : const Color(0x33000000),
      ),
    );
  }

  kakaoLogin() async {
    print("카카오 로그인 버튼 클릭");

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
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => OnboardingScreen()),
          );
        } else {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => MainScreen()),
          );
        }
      },
    );
  }

  googleLogin() async {
    print("구글 로그인 버튼 클릭");

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
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => OnboardingScreen()),
          );
        } else {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => MainScreen()),
          );
        }
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
