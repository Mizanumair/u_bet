import 'package:flutter/material.dart';

import '../core/constants/dimensions.dart';
import '../core/constants/font_weight.dart';
import '../core/constants/palette.dart';
import 'custom_text.dart';

class ReportSectionChip extends StatelessWidget {
  const ReportSectionChip({
    Key? key,
    required this.totalSales,
    required this.megaSales,
    required this.netSales,
    required this.totalCommision,
    required this.wins,
    required this.paidToBanker,
    required this.receivedFromBanker,
    required this.agentCashAtHand,
  }) : super(key: key);

  final String totalSales;
  final String megaSales;
  final String netSales;
  final String totalCommision;
  final String wins;
  final String paidToBanker;
  final String receivedFromBanker;
  final String agentCashAtHand;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: margin_10, horizontal: margin_10),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(radius_15)
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: margin_10),
                child: CustomText(
                    text: 'Total Sales:',
                    color1: AppColors.darkBlue,
                    fontWeight: fontWeight700,
                    fontSize: font_15),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: margin_10),
                child: CustomText(
                  text: totalSales,
                  color1: AppColors.darkBlue,
                  fontWeight: fontWeight700,
                  fontSize: font_15,
                  overflowBar: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: margin_10),
                child: CustomText(
                    text: 'Total Mega Sales:',
                    color1: AppColors.darkBlue,
                    fontWeight: fontWeight700,
                    fontSize: font_15),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: margin_10),
                child: CustomText(
                  text: totalSales,
                  color1: AppColors.darkBlue,
                  fontWeight: fontWeight700,
                  fontSize: font_15,
                  overflowBar: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: margin_10),
                child: CustomText(
                    text: 'Net Sales:',
                    color1: AppColors.darkBlue,
                    fontWeight: fontWeight700,
                    fontSize: font_15),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: margin_10),
                child: CustomText(
                  text: netSales,
                  color1: AppColors.darkBlue,
                  fontWeight: fontWeight700,
                  fontSize: font_15,
                  overflowBar: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: margin_10),
                child: CustomText(
                    text: 'Total Commision:',
                    color1: AppColors.darkBlue,
                    fontWeight: fontWeight700,
                    fontSize: font_15),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: margin_10),
                child: CustomText(
                  text: totalCommision,
                  color1: AppColors.darkBlue,
                  fontWeight: fontWeight700,
                  fontSize: font_15,
                  overflowBar: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: margin_10),
                child: CustomText(
                    text: 'Wins:',
                    color1: AppColors.darkBlue,
                    fontWeight: fontWeight700,
                    fontSize: font_15),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: margin_10),
                child: CustomText(
                  text: wins,
                  color1: AppColors.darkBlue,
                  fontWeight: fontWeight700,
                  fontSize: font_15,
                  overflowBar: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: margin_10),
                child: CustomText(
                    text: 'Paid To Banker:',
                    color1: AppColors.darkBlue,
                    fontWeight: fontWeight700,
                    fontSize: font_15),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: margin_10),
                child: CustomText(
                  text: paidToBanker,
                  color1: AppColors.darkBlue,
                  fontWeight: fontWeight700,
                  fontSize: font_15,
                  overflowBar: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: margin_10),
                child: CustomText(
                    text: 'Received From Banker:',
                    color1: AppColors.darkBlue,
                    fontWeight: fontWeight700,
                    fontSize: font_15),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: margin_10),
                child: CustomText(
                  text: receivedFromBanker,
                  color1: AppColors.darkBlue,
                  fontWeight: fontWeight700,
                  fontSize: font_15,
                  overflowBar: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: margin_10),
                child: CustomText(
                    text: 'Agent Cash At Hand:',
                    color1: AppColors.darkBlue,
                    fontWeight: fontWeight700,
                    fontSize: font_15),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: margin_10),
                child: CustomText(
                  text: agentCashAtHand,
                  color1: AppColors.darkBlue,
                  fontWeight: fontWeight700,
                  fontSize: font_15,
                  overflowBar: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
