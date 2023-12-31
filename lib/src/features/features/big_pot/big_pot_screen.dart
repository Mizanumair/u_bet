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
import 'package:bet_app/src/features/features/selected_pot/sale_confirmation.dart';
import 'package:bet_app/src/features/features/selected_pot/select_amount.dart';
import 'package:bet_app/src/features/features/selected_pot/select_number.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../core/constants/palette.dart';

class BigPotScreen extends StatelessWidget {
  const BigPotScreen({super.key});

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
              height: height_30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomContainer(
                  text: strSelectAmount,
                  hor: margin_40,
                  ver: margin_15,
                  col: AppColors.white,
                  colText: AppColors.darkBlue,
                  onTap: () {
                    Get.to(SelectAmount());
                  },
                ),
                CustomContainer(
                  text: strNo,
                  hor: margin_40,
                  ver: margin_15,
                  col: AppColors.darkBlue,
                  colText: AppColors.white,
                  onTap: () {
                    Get.to(SelectNumber());
                  },
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: margin_30),
              child: CustomMultiUseContainer(
                  ver: margin_15,
                  hor: margin_0,
                  col: AppColors.highlightBlue,
                  simpleRow: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 100,
                        child: CustomText(
                          text: strNumber,
                          color1: AppColors.white,
                          fontWeight: fontWeight900,
                          fontSize: font_10,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 120,
                        child: CustomText(
                            text: strAmount,
                            color1: AppColors.white,
                            fontWeight: fontWeight900,
                            fontSize: font_10),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 110,
                        child: CustomText(
                            text: strAction,
                            color1: AppColors.white,
                            fontWeight: fontWeight900,
                            fontSize: font_10),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: margin_30),
              child: CustomMultiUseContainer(
                  ver: margin_2,
                  hor: margin_0,
                  col: AppColors.white,
                  simpleRow: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 100,
                        child: CustomText(
                          text: '40',
                          color1: AppColors.blue,
                          fontWeight: fontWeight900,
                          fontSize: font_12,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 120,
                        child: CustomText(
                            text: '\$2034',
                            color1: AppColors.blue,
                            fontWeight: fontWeight900,
                            fontSize: font_12),
                      ),
                      Container(
                          alignment: Alignment.center,
                          width: 110,
                          child: IconButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    // return the dialog widget
                                    return DeleteDialog();
                                  },
                                );
                              },
                              icon: Icon(
                                Icons.delete_forever,
                                color: AppColors.blue,
                                size: margin_30,
                              ))),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
