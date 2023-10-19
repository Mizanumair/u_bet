import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../features/auth/login/login_binding.dart';
import '../../features/auth/login/login_screen.dart';


class AppRoutes {


  static const String splash = '/splash';
  static const String splashSecond = '/splashSecond';
  static const String login = '/login';
  static const String forgotPassword = '/forgotPassword';
  static const String signUp = '/signUp';
  static const String otp = '/otp';
  static const String home = '/home';


  static String getSplashRoute() => splash;
  static String getSplashSecondRoute() => splashSecond;
  static String getForgotPasswordRoute() => forgotPassword;
  static String getLoginRoute() => login;
  static String getSignUpRoute() => signUp;
  static String getOtpRoute() => otp;
  static String getHomeRoute() => home;



  static generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return GetPageRoute(
            settings: settings,
            routeName: getLoginRoute(),
            page: () => LoginScreen());


      default:
        return null;
    }
  }

  static getPages() => [

    GetPage(
          name: login,
          page: () => LoginScreen(),
          binding: LoginBinding(),
        ),


      ];
}
