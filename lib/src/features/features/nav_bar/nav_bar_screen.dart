import 'package:bet_app/src/features/features/banker_report/banker_report_screen.dart';
import 'package:bet_app/src/features/features/big_pot/big_pot_screen.dart';
import 'package:bet_app/src/features/features/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../components/custom_text.dart';
import '../../../core/constants/assets.dart';
import '../../../core/constants/dimensions.dart';
import '../../../core/constants/font_weight.dart';
import '../../../core/constants/palette.dart';
import '../../../core/constants/strings.dart';
import '../home/home_screen.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  bool click = false;
  bool click2 = false;
  bool click3 = false;


  List<Widget> navigationWidgets = [
    HomeScreen(),
    BigPotScreen(),
    BankerReportScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          elevation: 2,
          child: Container(
            height: 80,
            padding: EdgeInsets.symmetric(vertical: margin_10),
            decoration: BoxDecoration(
              color: AppColors.darkBlue,
              boxShadow: [
                BoxShadow(
                  color: AppColors.greyColor.withOpacity(.18),
                  offset: Offset(0, -10),
                  blurRadius: 20,
                ),
              ]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                    onTap: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                    },
                    child: SizedBox(
                      //height: 25,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            height: height_22,
                            ImgAssets.makeSale,
                            color: _selectedIndex == 0 ? AppColors.blue : AppColors.white,
                          ),
                          CustomText(
                              text: strMakeSale,
                              color1: _selectedIndex == 0 ? AppColors.blue : AppColors.white,
                              fontWeight: fontWeight800,
                              fontSize: font_10),
                        ],
                      ),
                    )),
                InkWell(
                    onTap: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                    },
                    child: SizedBox(
                      //height: 25,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            height: height_22,
                            ImgAssets.bigPot,
                            color: _selectedIndex == 1 ? AppColors.blue : AppColors.white,
                          ),
                          CustomText(
                              text: strBigPot,
                              color1: _selectedIndex == 1 ? AppColors.blue : AppColors.white,
                              fontWeight: fontWeight800,
                              fontSize: font_10),
                        ],
                      ),
                    )),
                InkWell(
                    onTap: () {
                      setState(() {
                        _selectedIndex = 2;
                      });
                    },
                    child: SizedBox(
                      //height: 25,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            height: height_22,
                            ImgAssets.bankerReport,
                            color: _selectedIndex == 2 ? AppColors.blue : AppColors.white,
                          ),
                          CustomText(
                              text: strBankerReport,
                              color1: _selectedIndex == 2 ? AppColors.blue : AppColors.white,
                              fontWeight: fontWeight800,
                              fontSize: font_10),
                        ],
                      ),
                    )),
                InkWell(
                    onTap: () {
                      setState(() {
                        _selectedIndex = 3;
                      });
                    },
                    child: SizedBox(
                      //height: 25,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            height: height_22,
                            ImgAssets.profile,
                            color: _selectedIndex == 3 ? AppColors.blue : AppColors.white,
                          ),
                          CustomText(
                              text: strProfile,
                              color1: _selectedIndex == 3 ? AppColors.blue : AppColors.white,
                              fontWeight: fontWeight800,
                              fontSize: font_10),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ),
        body: navigationWidgets.elementAt(_selectedIndex));
  }
}