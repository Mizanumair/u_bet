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
import 'package:bet_app/src/features/features/banker_report/report_section_screen.dart';
import 'package:bet_app/src/features/features/banker_report/sales_report_screen.dart';
import 'package:bet_app/src/features/features/banker_report/winning_report_screen.dart';
import 'package:bet_app/src/features/features/selected_pot/sale_confirmation.dart';
import 'package:bet_app/src/features/features/selected_pot/select_amount.dart';
import 'package:bet_app/src/features/features/selected_pot/select_number.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../core/constants/palette.dart';

class BankerReportScreen extends StatelessWidget {
  const BankerReportScreen({super.key});

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
            InkWell(
              onTap: (){
                Get.to(ReportSectionScreen());
              },
              child: CustomMultiUseContainer(
                  col: AppColors.white,
                  ver: 0,
                  hor: 0,
                  simpleRow: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CustomMultiUseContainer(
                              ver: margin_15,
                              hor: margin_15,
                              col: AppColors.darkBlue,
                              simpleRow: Row(
                                children: [
                                  Icon(
                                    Icons.library_books_rounded,
                                    color: AppColors.white,
                                    size: margin_25,
                                  )
                                ],
                              )),
                          CustomDivider(
                            width: width_15,
                          ),
                          CustomText(
                              text: strBankerReport,
                              color1: AppColors.darkBlue,
                              fontWeight: fontWeight700,
                              fontSize: font_18),

                        ],
                      ),

                      Icon(Icons.arrow_forward_ios, color: AppColors.darkBlue, size: margin_15,),

                    ],
                  )),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: margin_15),
              child: InkWell(
                onTap: (){
                  Get.to(SalesReportScreen());
                },
                child: CustomMultiUseContainer(
                    col: AppColors.white,
                    ver: 0,
                    hor: 0,
                    simpleRow: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CustomMultiUseContainer(
                                ver: margin_15,
                                hor: margin_15,
                                col: AppColors.darkBlue,
                                simpleRow: Row(
                                  children: [
                                    Icon(
                                      Icons.library_books_rounded,
                                      color: AppColors.white,
                                      size: margin_25,
                                    )
                                  ],
                                )),
                            CustomDivider(
                              width: width_15,
                            ),
                            CustomText(
                                text: strSalesRep,
                                color1: AppColors.darkBlue,
                                fontWeight: fontWeight700,
                                fontSize: font_18),

                          ],
                        ),

                        Icon(Icons.arrow_forward_ios, color: AppColors.darkBlue, size: margin_15,),

                      ],
                    )),
              ),
            ),
            InkWell(
              onTap: (){
                Get.to(WinningReport());
              },
              child: CustomMultiUseContainer(
                  col: AppColors.white,
                  ver: 0,
                  hor: 0,
                  simpleRow: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CustomMultiUseContainer(
                              ver: margin_15,
                              hor: margin_15,
                              col: AppColors.darkBlue,
                              simpleRow: Row(
                                children: [
                                  Icon(
                                    Icons.library_books_rounded,
                                    color: AppColors.white,
                                    size: margin_25,
                                  )
                                ],
                              )),
                          CustomDivider(
                            width: width_15,
                          ),
                          CustomText(
                              text: strWinsReport,
                              color1: AppColors.darkBlue,
                              fontWeight: fontWeight700,
                              fontSize: font_18),
                        ],
                      ),

                      Icon(Icons.arrow_forward_ios, color: AppColors.darkBlue, size: margin_15,),

                    ],
                  )),
            ),

          ],
        ),
      ),
    );
  }
}
