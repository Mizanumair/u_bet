import 'package:bet_app/src/components/custom_appbar.dart';
import 'package:bet_app/src/components/custom_button.dart';
import 'package:bet_app/src/components/custom_container_with_tex.dart';
import 'package:bet_app/src/components/custom_divider.dart';
import 'package:bet_app/src/components/custom_multi_container.dart';
import 'package:bet_app/src/components/custom_text.dart';
import 'package:bet_app/src/components/delete_dialog.dart';
import 'package:bet_app/src/components/mega_amount_dialog.dart';
import 'package:bet_app/src/core/constants/assets.dart';
import 'package:bet_app/src/core/constants/dimensions.dart';
import 'package:bet_app/src/core/constants/font_weight.dart';
import 'package:bet_app/src/core/constants/strings.dart';
import 'package:bet_app/src/features/features/selected_pot/select_amount.dart';
import 'package:bet_app/src/features/features/selected_pot/select_number.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../core/constants/palette.dart';

class ConfirmSale extends StatelessWidget {
  const ConfirmSale({super.key});

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
            Image.asset(
              ImgAssets.bag,
              fit: BoxFit.fitWidth,
            ),
            Align(
              alignment: Alignment.center,
              child: CustomText(
                text: strSaleSuccess,
                color1: AppColors.white,
                fontWeight: fontWeight800,
                fontSize: font_30,
              ),
            ),
            CustomDivider(
              height: height_30,
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
                        width: 80,
                        child: CustomText(
                          text: strSalesId,
                          color1: AppColors.green,
                          fontWeight: fontWeight800,
                          fontSize: font_12,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                                text: '1887675765576751060',
                                color1: AppColors.white,
                                fontWeight: fontWeight800,
                                fontSize: font_12),
                            CustomDivider(
                              width: width_10,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.share,
                                  color: AppColors.white,
                                  size: height_20,
                                ))
                          ],
                        ),
                      )
                    ],
                  )),
            ),
            CustomDivider(
              height: height_200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  width: width_150,
                  buttonColor: AppColors.white,
                  text: 'OK',
                  color: AppColors.darkBlue,
                  fontWeight: fontWeight900,
                  font: font_20,
                  onPress: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
