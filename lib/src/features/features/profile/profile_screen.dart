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
import 'package:bet_app/src/features/features/notification/notification.dart';
import 'package:bet_app/src/features/features/selected_pot/sale_confirmation.dart';
import 'package:bet_app/src/features/features/selected_pot/select_amount.dart';
import 'package:bet_app/src/features/features/selected_pot/select_number.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../core/constants/palette.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
          print('object');
          Get.to(NotificationScreen());
    },
    icon: Icons.notifications,
    ),
    body: SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: margin_10),
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: radius_50,
                backgroundColor: AppColors.white,
              )
            ],
          ),
          CustomDivider(
            height: height_50,
          ),
          CustomMultiUseContainer(
              ver: margin_15,
              hor: margin_12,
              simpleRow: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(
                      text: 'USERNAME',
                      color1: AppColors.darkBlue,
                      fontWeight: fontWeight800,
                      fontSize: font_13),
                ],
              )),
          CustomDivider(
            height: height_20,
          ),
          CustomMultiUseContainer(
              ver: margin_15,
              hor: margin_12,
              simpleRow: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(
                      text: 'SALES PERSON ID',
                      color1: AppColors.darkBlue,
                      fontWeight: fontWeight800,
                      fontSize: font_13),
                ],
              )),
          CustomDivider(
            height: height_20,
          ),
          CustomMultiUseContainer(
              ver: margin_15,
              hor: margin_12,
              simpleRow: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(
                      text: 'NAME',
                      color1: AppColors.darkBlue,
                      fontWeight: fontWeight800,
                      fontSize: font_13),
                ],
              )),
          CustomDivider(
            height: height_20,
          ),
          CustomMultiUseContainer(
              ver: margin_15,
              hor: margin_12,
              simpleRow: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(
                      text: 'EMAIL',
                      color1: AppColors.darkBlue,
                      fontWeight: fontWeight800,
                      fontSize: font_13),
                ],
              )),
          Column(
            children: [
              CustomDivider(
                height: height_120,
              ),
              CustomButton(
                width: width_200,
                text: strLogout,
                color: AppColors.darkBlue,
                fontWeight: fontWeight800,
                font: font_20,
                onPress: (){
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      // return the dialog widget
                      return LogOutDialog();
                    },
                  );
                },
              ),
            ],
          ),
        ],
      ),
    ),
    );
  }
}
