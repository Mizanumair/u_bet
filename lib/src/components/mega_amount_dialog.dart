import 'package:bet_app/src/components/custom_button.dart';
import 'package:bet_app/src/components/custom_divider.dart';
import 'package:bet_app/src/components/custom_text.dart';
import 'package:bet_app/src/components/custom_textfield.dart';
import 'package:bet_app/src/core/constants/dimensions.dart';
import 'package:bet_app/src/core/constants/font_weight.dart';
import 'package:bet_app/src/core/constants/palette.dart';
import 'package:bet_app/src/core/constants/strings.dart';
import 'package:flutter/material.dart';

class MegaAmount extends StatelessWidget {
  const MegaAmount({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      actionsPadding: EdgeInsets.symmetric(horizontal: margin_10, vertical: margin_20),
      actionsAlignment: MainAxisAlignment.center,
      titlePadding: EdgeInsets.zero,
      actions: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
                text: 'Mega Amount',
                color1: AppColors.darkBlue,
                fontWeight: fontWeight700,
                fontSize: font_28),
            CustomDivider(
              height: height_5,
            ),
            CustomText(
                text: 'Enter mega amount',
                color1: AppColors.greyColor,
                fontWeight: fontWeight600,
                fontSize: font_18),
            CustomDivider(
              height: height_30,
            ),
            CustomTextField(
              labelText: strMegaAmount,
              prefixIcon: null,
              obscure: false,
              height: height_30,
              textInputType: TextInputType.text,
              borderCol: AppColors.darkBlue,
              colFill: AppColors.transparent,
            ),
            CustomButton(
              width: width_120,
              buttonColor: AppColors.darkBlue,
                text: 'OK',
                color: AppColors.white,
                fontWeight: fontWeight800,
                font: font_20,
              
            )
          ],
        ),
      ],
    );
    ;
  }
}
