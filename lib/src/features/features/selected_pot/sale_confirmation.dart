import 'package:bet_app/src/components/custom_appbar.dart';
import 'package:bet_app/src/components/custom_button.dart';
import 'package:bet_app/src/components/custom_container_with_tex.dart';
import 'package:bet_app/src/components/custom_divider.dart';
import 'package:bet_app/src/components/custom_multi_container.dart';
import 'package:bet_app/src/components/custom_text.dart';
import 'package:bet_app/src/components/delete_dialog.dart';
import 'package:bet_app/src/components/mega_amount_dialog.dart';
import 'package:bet_app/src/core/constants/dimensions.dart';
import 'package:bet_app/src/core/constants/font_weight.dart';
import 'package:bet_app/src/core/constants/strings.dart';
import 'package:bet_app/src/features/features/selected_pot/confirm.dart';
import 'package:bet_app/src/features/features/selected_pot/select_amount.dart';
import 'package:bet_app/src/features/features/selected_pot/select_number.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../core/constants/palette.dart';

class SaleConfirmation extends StatelessWidget {
  const SaleConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      appBar: CustomAppbar(
        appBar: AppBar(),
        title: strBack,
        color: AppColors.white,
        containerColor: AppColors.transparent,
        showSuffix: true,
        suffixPress: () {},
        icon: Icons.notifications,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: margin_10),
          children: [
            CustomDivider(
              height: height_20,
            ),
            Align(
              alignment: Alignment.center,
              child: CustomText(
                  text: strConfirmation,
                  color1: AppColors.darkBlue,
                  fontWeight: fontWeight700,
                  fontSize: font_30),
            ),
            CustomDivider(
              height: height_30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: margin_10, horizontal: margin_0),
              child: CustomMultiUseContainer(
                  ver: margin_0,
                  hor: 0,
                  col: AppColors.highlightBlue,
                  simpleRow: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 60,
                        child: CustomText(
                          text: strPot,
                          color1: AppColors.white,
                          fontWeight: fontWeight900,
                          fontSize: font_10,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 90,
                        child: CustomText(
                            text: 'R.Bet $strAmount',
                            color1: AppColors.white,
                            fontWeight: fontWeight900,
                            fontSize: font_10),
                      ),
                      Container(
                        width: 100,
                        alignment: Alignment.center,
                        child: CustomText(
                            text: 'M.Bet $strAmount',
                            color1: AppColors.white,
                            fontWeight: fontWeight900,
                            fontSize: font_10),
                      ),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(radius_10)),
                        height: 60,
                        width: 111,
                        child: CustomText(
                            text: strSubTotal,
                            color1: AppColors.green,
                            fontWeight: fontWeight800,
                            fontSize: font_15),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: margin_10, horizontal: margin_0),
              child: CustomMultiUseContainer(
                  ver: margin_0,
                  hor: 0,
                  col: AppColors.white,
                  simpleRow: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 60,
                        child: CustomText(
                          text: '60',
                          color1: AppColors.blue,
                          fontWeight: fontWeight900,
                          fontSize: font_10,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 90,
                        child: CustomText(
                            text: '\$2000',
                            color1: AppColors.blue,
                            fontWeight: fontWeight900,
                            fontSize: font_10),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 110,
                        child: CustomText(
                            text: '\$9000',
                            color1: AppColors.blue,
                            fontWeight: fontWeight900,
                            fontSize: font_10),
                      ),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: AppColors.green,
                            borderRadius: BorderRadius.circular(radius_10)),
                        height: 60,
                        padding: EdgeInsets.symmetric(horizontal: margin_20),
                        child: CustomText(
                            text: '\$11060',
                            color1: AppColors.white,
                            fontWeight: fontWeight800,
                            fontSize: font_15),
                      )
                    ],
                  )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: margin_10, horizontal: margin_0),
              child: CustomMultiUseContainer(
                  ver: margin_0,
                  hor: margin_0,
                  col: AppColors.white,
                  simpleRow: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 60,
                        child: CustomText(
                          text: strTotal,
                          color1: AppColors.green,
                          fontWeight: fontWeight800,
                          fontSize: font_15,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: margin_20),
                        decoration: BoxDecoration(
                            color: AppColors.green,
                            borderRadius: BorderRadius.circular(radius_10)),
                        height: 60,
                        //width: 128,
                        child: CustomText(
                            text: '\$11060',
                            color1: AppColors.white,
                            fontWeight: fontWeight800,
                            fontSize: font_15),
                      )
                    ],
                  )),
            ),
            CustomDivider(
              height: height_250,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  width: width_120,
                  buttonColor: AppColors.red,
                  text: 'Cancel',
                  color: AppColors.white,
                  fontWeight: fontWeight800,
                  font: font_20,
                  onPress: () {},
                ),
                CustomDivider(
                  width: width_20,
                ),
                CustomButton(
                  width: width_120,
                  buttonColor: AppColors.green,
                  text: 'Confirm',
                  color: AppColors.white,
                  fontWeight: fontWeight800,
                  font: font_20,
                  onPress: () {
                    Get.to(ConfirmSale());
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
