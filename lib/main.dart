import 'package:bet_app/src/core/config/routes.dart';
import 'package:bet_app/src/core/constants/palette.dart';
import 'package:bet_app/src/features/auth/login/login_screen.dart';
import 'package:bet_app/src/features/features/home/home_screen.dart';
import 'package:bet_app/src/features/features/nav_bar/nav_bar_screen.dart';
import 'package:bet_app/src/prc.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/smart_management.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


  void main()  {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context, Widget? child) {
          return GetMaterialApp(
            theme: ThemeData(
              fontFamily: 'Jura',
              //primarySwatch: Colors.orange,
              colorScheme: const ColorScheme.light(
                primary: AppColors.blue,
              ),
              scaffoldBackgroundColor: AppColors.white,
              appBarTheme: const AppBarTheme(
                backgroundColor: AppColors.white,
                elevation: 0,
              ),
              bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                elevation: 3,
                backgroundColor: AppColors.white,
              ),
            ),
            debugShowCheckedModeBanner: false,
            smartManagement: SmartManagement.full,
            home: LoginScreen(),
            // initialRoute: AppRoutes.getHomeRoute(),
            // initialBinding:  HomeBinding(),
            // initialRoute: AppRoutes.getAddOrderOneRoute(),
            // initialBinding: AddOrderBinding(),
            getPages: AppRoutes.getPages(),
            onGenerateRoute: (settings) => AppRoutes.generateRoute(settings),
          );
        });
  }
}
