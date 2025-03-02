import 'package:app/app/app.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../app/asset/assets.gen.dart';
import '../../../../../app/constant/system.dart';
import 'login_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: App.instance.overlay.relativeScreenHeight(
          0,
        ),
        backgroundColor: Colors.white.withOpacity(
          0,
        ),
        surfaceTintColor: Colors.white.withOpacity(
          0,
        ),
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        elevation: 0,
        systemOverlayStyle: systemUiOverlayStyleDark,
      ),
      backgroundColor: const Color(
        0xFFF1F1F5,
      ),
      body: loginPage(context: context),
    );
  }
}

Widget loginPage({
  required BuildContext context,
}) =>
    BlocProvider(
      create: (context) => LoginBloc(),
      child: Builder(builder: (context) {
        return Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: kToolbarHeightMul2,
                ),
                child: BysonAspectRatio.padding(
                  designWidth: designWidth,
                  designHeight: 382,
                  designPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  builder: (converter) => Stack(
                    children: [
                      PositionedDirectional(
                        top: 0,
                        start: 0,
                        end: 0,
                        height: converter.h(
                          29,
                        ),
                        child: Center(
                          child: Text(
                            '운동의 모든 것',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              height: 1.2,
                              fontSize: converter.h(
                                24,
                              ),
                              color: const Color(
                                0xFF303F9F,
                              ),
                              fontWeight: FontWeightAlias.light,
                              letterSpacing: converter.w(
                                -0.48,
                              ),
                            ),
                          ),
                        ),
                      ),
                      PositionedDirectional(
                        top: converter.h(
                          37,
                        ),
                        start: 0,
                        end: 0,
                        height: converter.h(
                          58,
                        ),
                        child: Center(
                          child: Text(
                            '바디가이드',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              height: 1.2,
                              fontSize: converter.h(
                                48,
                              ),
                              color: const Color(
                                0xFF303F9F,
                              ),
                              fontWeight: FontWeightAlias.extraBold,
                              letterSpacing: converter.w(
                                -0.96,
                              ),
                            ),
                          ),
                        ),
                      ),
                      PositionedDirectional(
                        bottom: converter.h(
                          212,
                        ),
                        start: 0,
                        end: 0,
                        height: converter.h(
                          27,
                        ),
                        child: Center(
                          child: Text(
                            '다음 계정을 통해 로그인 해주세요',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              height: 1.5,
                              fontSize: converter.h(
                                18,
                              ),
                              color: const Color(
                                0xFF454545,
                              ),
                              fontWeight: FontWeightAlias.regular,
                              letterSpacing: converter.w(
                                -0.36,
                              ),
                            ),
                          ),
                        ),
                      ),
                      PositionedDirectional(
                        bottom: converter.h(
                          128,
                        ),
                        start: 0,
                        end: 0,
                        height: converter.h(
                          60,
                        ),
                        child: BysonCupertinoButton.outlinedSolid(
                          onPressed: () {
                            context.read<LoginBloc>().add(
                                  LoginEvent.loginInWithKakao(context: context),
                                );
                          },
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            converter.radius(
                              12,
                            ),
                          ),
                          border: Border.all(
                            width: converter.h(
                              1,
                            ),
                            style: BorderStyle.solid,
                            strokeAlign: BorderSide.strokeAlignInside,
                            color: const Color(
                              0xFFE5E5EC,
                            ),
                          ),
                          child: Center(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Assets.icon.icKakao.svg(
                                  width: converter.w(
                                    24,
                                  ),
                                  height: converter.h(
                                    24,
                                  ),
                                  fit: BoxFit.contain,
                                  alignment: Alignment.center,
                                ),
                                VerticalDivider(
                                  color: Colors.transparent,
                                  width: converter.w(
                                    8,
                                  ),
                                  thickness: 0,
                                ),
                                Text(
                                  '카카오 계정으로 시작하기',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    height: 24 / 16,
                                    fontSize: converter.h(
                                      16,
                                    ),
                                    color: const Color(
                                      0xFF111111,
                                    ),
                                    fontWeight: FontWeightAlias.regular,
                                    letterSpacing: converter.w(
                                      -0.32,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      PositionedDirectional(
                        bottom: converter.h(
                          60,
                        ),
                        start: 0,
                        end: 0,
                        height: converter.h(
                          60,
                        ),
                        child: BysonCupertinoButton.outlinedSolid(
                          onPressed: () {
                            // context.read<SignBloc>().add(
                            //       const SignEvent.signInWithGoogle(),
                            //     );
                            // App.instance.navigator.go(Routes.onboard.path);

                            context.read<LoginBloc>().add(
                                  LoginEvent.loginInWithGoogle(
                                      context: context),
                                );
                          },
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            converter.radius(
                              12,
                            ),
                          ),
                          border: Border.all(
                            width: converter.h(
                              1,
                            ),
                            style: BorderStyle.solid,
                            strokeAlign: BorderSide.strokeAlignInside,
                            color: const Color(
                              0xFFE5E5EC,
                            ),
                          ),
                          child: Center(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Assets.icon.icGoogle.image(
                                  width: converter.w(
                                    24,
                                  ),
                                  height: converter.h(
                                    24,
                                  ),
                                  fit: BoxFit.contain,
                                  alignment: Alignment.center,
                                ),
                                VerticalDivider(
                                  color: Colors.transparent,
                                  width: converter.w(
                                    8,
                                  ),
                                  thickness: 0,
                                ),
                                Text(
                                  '구글 계정으로 시작하기',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    height: 24 / 16,
                                    fontSize: converter.h(
                                      16,
                                    ),
                                    color: const Color(
                                      0xFF111111,
                                    ),
                                    fontWeight: FontWeightAlias.regular,
                                    letterSpacing: converter.w(
                                      -0.32,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      PositionedDirectional(
                        bottom: 0,
                        start: 0,
                        end: 0,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: TextStyle(
                                height: 18 / 12,
                                fontSize: converter.h(
                                  12,
                                ),
                                color: const Color(
                                  0xFFB0B0B0,
                                ),
                                fontWeight: FontWeightAlias.regular,
                                letterSpacing: converter.w(
                                  -0.24,
                                ),
                              ),
                              children: const [
                                TextSpan(
                                  text: 'SNS계정을 연동하면 ',
                                ),
                                TextSpan(
                                    text: '이용약관',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      decorationColor: Color(
                                        0xFFB0B0B0,
                                      ),
                                    )),
                                TextSpan(
                                  text: ' 및 ',
                                ),
                                TextSpan(
                                    text: '개인정보처리방침',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      decorationColor: Color(
                                        0xFFB0B0B0,
                                      ),
                                    )),
                                TextSpan(
                                  text: '에 동의하시는 것으로 간주됩니다.',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
