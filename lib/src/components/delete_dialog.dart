import 'package:flutter/material.dart';

import '../core/constants/dimensions.dart';
import '../core/constants/font_weight.dart';
import '../core/constants/palette.dart';
import '../core/constants/strings.dart';
import 'custom_button.dart';
import 'custom_divider.dart';
import 'custom_text.dart';
import 'custom_textfield.dart';

class DeleteDialog extends StatelessWidget {
  const DeleteDialog({super.key});

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
                text: 'Delete',
                color1: AppColors.darkBlue,
                fontWeight: fontWeight700,
                fontSize: font_28),
            CustomDivider(
              height: height_30,
            ),
            CustomText(
                text: 'Are you sure\nyou want to delete?',
                color1: AppColors.greyColor,
                fontWeight: fontWeight600,
                fontSize: font_17,
                textAlign: TextAlign.center,
            ),
            CustomDivider(
              height: height_30,
            ),
            Row(
              children: [
                CustomButton(
                  width: width_120,
                  buttonColor: AppColors.red,
                  text: 'No',
                  color: AppColors.white,
                  fontWeight: fontWeight800,
                  font: font_20,
                  onPress: (){},
                ),
                CustomDivider(
                  width: width_20,
                ),
                CustomButton(
                  width: width_120,
                  buttonColor: AppColors.green,
                  text: 'Yes',
                  color: AppColors.white,
                  fontWeight: fontWeight800,
                  font: font_20,
                  onPress: (){},
                ),

              ],
            )
          ],
        ),
      ],
    );
  }
}
