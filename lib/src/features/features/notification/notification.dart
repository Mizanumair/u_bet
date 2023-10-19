import 'package:bet_app/src/components/custom_appbar.dart';
import 'package:bet_app/src/components/custom_button.dart';
import 'package:bet_app/src/components/custom_container_with_tex.dart';
import 'package:bet_app/src/components/custom_divider.dart';
import 'package:bet_app/src/components/custom_multi_container.dart';
import 'package:bet_app/src/components/custom_text.dart';
import 'package:bet_app/src/components/delete_dialog.dart';
import 'package:bet_app/src/components/logout_dialog.dart';
import 'package:bet_app/src/components/mega_amount_dialog.dart';
import 'package:bet_app/src/components/report_section_chip.dart';
import 'package:bet_app/src/components/weekly_banker_report_line.dart';
import 'package:bet_app/src/core/constants/dimensions.dart';
import 'package:bet_app/src/core/constants/font_weight.dart';
import 'package:bet_app/src/core/constants/strings.dart';
import 'package:bet_app/src/features/features/banker_report/report_section_screen.dart';
import 'package:bet_app/src/features/features/selected_pot/sale_confirmation.dart';
import 'package:bet_app/src/features/features/selected_pot/select_amount.dart';
import 'package:bet_app/src/features/features/selected_pot/select_number.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../core/constants/palette.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
        suffixPress: () {
        },
        icon: Icons.notifications,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: margin_10, horizontal: margin_10),
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: margin_10),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(radius_15),
              ),
              child: Column(
                children: [
                  for(int i=1; i<20; i++)
                  ListTile(
                    titleAlignment: ListTileTitleAlignment.center,
                    leading: Icon(Icons.notifications, color: AppColors.darkBlue,),
                    title: CustomText(
                        text: 'Mizan Umair',
                        color1: AppColors.darkBlue,
                        fontWeight: fontWeight800,
                        fontSize: font_15),
                    subtitle: CustomText(
                        text: 'Mizan Umair',
                        color1: AppColors.greyColor,
                        fontWeight: fontWeight500,
                        fontSize: font_12),
                    onTap: (){},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
