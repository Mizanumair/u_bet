import 'package:bet_app/src/components/custom_appbar.dart';
import 'package:bet_app/src/components/custom_container_with_tex.dart';
import 'package:bet_app/src/components/custom_divider.dart';
import 'package:bet_app/src/components/custom_multi_container.dart';
import 'package:bet_app/src/components/custom_text.dart';
import 'package:bet_app/src/core/constants/dimensions.dart';
import 'package:bet_app/src/core/constants/font_weight.dart';
import 'package:bet_app/src/core/constants/strings.dart';
import 'package:bet_app/src/features/features/home/regular_pot.dart';
import 'package:bet_app/src/features/features/selected_pot/selected_pot.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../core/constants/palette.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      appBar: CustomAppbar(
        appBar: AppBar(),
        title: strSelectPot,
        color: AppColors.white,
        containerColor: AppColors.transparent,
        showSuffix: true,
        icon: Icons.notifications,
        dontShowBackButton: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: margin_10),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomContainer(text: strPot, hor: margin_20, ver: margin_8),
                CustomContainer(
                    text: strStartTime, hor: margin_15, ver: margin_8),
                CustomContainer(
                    text: strEndTime, hor: margin_15, ver: margin_8),
              ],
            ),
            CustomDivider(
              height: height_30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: margin_10, horizontal: margin_5),
              child: InkWell(
                onTap: (){
                  Get.to(RegularPotScreen());
                },
                child: CustomMultiUseContainer(
                    ver: margin_15,
                    hor: margin_12,
                    simpleRow: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomDivider(
                          width: width_15,
                        ),
                        Expanded(
                            flex: 1,
                            child: CustomText(
                                text: '40',
                                color1: AppColors.blue,
                                fontWeight: fontWeight800,
                                fontSize: font_17)),
                        Expanded(
                            flex: 1,
                            child: CustomText(
                                text: '12:20 PM',
                                color1: AppColors.blue,
                                fontWeight: fontWeight800,
                                fontSize: font_17)),
                        Expanded(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomText(
                                    text: '14:40 PM',
                                    color1: AppColors.blue,
                                    fontWeight: fontWeight800,
                                    fontSize: font_17),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: AppColors.blue,
                                  size: margin_12,
                                )
                              ],
                            )),
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
