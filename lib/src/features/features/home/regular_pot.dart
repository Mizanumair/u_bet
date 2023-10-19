import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../components/custom_appbar.dart';
import '../../../components/custom_container_with_tex.dart';
import '../../../components/custom_divider.dart';
import '../../../components/custom_multi_container.dart';
import '../../../components/custom_text.dart';
import '../../../core/constants/dimensions.dart';
import '../../../core/constants/font_weight.dart';
import '../../../core/constants/palette.dart';
import '../../../core/constants/strings.dart';
import '../selected_pot/selected_pot.dart';

class RegularPotScreen extends StatelessWidget {
  const RegularPotScreen({super.key});

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
                CustomContainer(text: strSNo, hor: margin_7, ver: margin_5),
                CustomContainer(text: strLottoName, hor: margin_7, ver: margin_5),
                CustomContainer(
                    text: strStartTime, hor: margin_7, ver: margin_5),
                CustomContainer(
                    text: strEndTime, hor: margin_7, ver: margin_5),
              ],
            ),
            CustomDivider(
              height: height_30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: margin_10, horizontal: margin_5),
              child: InkWell(
                onTap: (){
                  Get.to(SelectedPot());
                },
                child: CustomMultiUseContainer(
                    ver: margin_15,
                    hor: margin_12,
                    simpleRow: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: width_55,
                          child: CustomText(
                              text: '40',
                              color1: AppColors.blue,
                              fontWeight: fontWeight800,
                              fontSize: font_13),
                        ),
                        SizedBox(
                          width: width_100,
                          child: CustomText(
                              text: 'Lotto Name',
                              color1: AppColors.blue,
                              fontWeight: fontWeight800,
                              fontSize: font_13),
                        ),
                        SizedBox(
                          width: width_60,
                          child: CustomText(
                              text: '12:20 PM',
                              color1: AppColors.blue,
                              fontWeight: fontWeight800,
                              fontSize: font_13),
                        ),

                        Expanded(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomText(
                                    text: '14:40 PM',
                                    color1: AppColors.blue,
                                    fontWeight: fontWeight800,
                                    fontSize: font_13),
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
